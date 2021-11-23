#include <errno.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

typedef enum {
	FAIL,
	IGNORE,
	SUCCESS,
	RECORD
} ReturnType;

int filterExtension(const struct dirent *file) {
	if (!file) {
		return 0;
	}

	char* extension = strrchr(file->d_name, '.');

	if (!extension || extension == file->d_name) {
		return 0;
	}

	if (strcmp(extension, ".lumina") == 0) {
		return 1;
	}

	return 0;
}

char* getFileNameWithExtension(const char* fileName, const char* extension) {
	char* curExtension = strrchr(fileName, '.');
	char* buffer;

	if (strlen(curExtension) < strlen(extension)) {
		buffer = malloc(strlen(fileName) - strlen(curExtension) + strlen(extension));
		strcpy(buffer, fileName);
	} else {
		buffer = strdup(fileName);
	}

	char* dotPos = strrchr(buffer, '.');
	strcpy(dotPos, extension);

	return buffer;
}

ReturnType testFile(char* fileName, bool flagRecord) {
	int filedes[2];
	if (pipe(filedes) == -1) {
		perror("pipe");
		exit(1);
	}

	ReturnType answer = SUCCESS;

	pid_t pid = fork();

	if (pid == -1) {
		perror("fork");
		exit(1);
	} else if (pid == 0) {
		while ((dup2(filedes[1], STDOUT_FILENO) == -1) && (errno == EINTR)) {}
		close(filedes[1]);
		close(filedes[0]);

		execl("../lumina", "lumina", "-r", fileName, (char*)0);
		perror("execl");
		_exit(1);
	}
	close(filedes[1]);
	
	char* testFileName = getFileNameWithExtension(fileName, ".test");
	FILE* testFile;
	if (flagRecord) {
		testFile = fopen(testFileName, "w");
		answer = RECORD;
	} else {
		testFile = fopen(testFileName, "r");
	}

	if (testFile == NULL) {
		printf("\033[0;33mcould not find file '%s' - dumping the output without testing\033[0m:\n\n", testFileName);
		answer = IGNORE;
	}

	char buffer[4096];
	char testBuffer[4096];
	while (1) {
		ssize_t count = read(filedes[0], buffer, sizeof(buffer));
		if (testFile != NULL && !flagRecord) {
			ssize_t refCount = fread(testBuffer, 1, count, testFile);
		}

		if (count == -1) {
			if (errno == EINTR) {
				continue;
			} else {
				perror("read");
				exit(1);
			}
		} else if (count == 0) {
			break;
		} else {
			char* output = strndup(buffer, count);
			char* reference = strndup(testBuffer, count);

			if (testFile == NULL) {
				printf("%s", output);
			} else if (flagRecord) {
				fprintf(testFile, "%s", output);
			} else if (strncmp(output, reference, count) != 0) {
				printf("\033[0;31mthe output is not the same as the expected output\033[0m:\nexpected: %s\n\nactual: %s\n\n", reference, output);
				answer = FAIL;
			}

			free(output);
		}
	}

	if (testFile == NULL) {
		printf("\n\n");
	}
	if (answer == SUCCESS) {
		printf("\033[1;32msuccess: %s\n\033[0m", fileName);
	}

	free(testFileName);
	close(filedes[0]);
	wait(0);

	return answer;
}

int main(int argc, char** argv) {
	struct dirent **nameList;

	bool flagRecord = false;

	char* targetName = NULL;

	while (*++argv) {
		if (strcmp(*argv, "-record") == 0) {
			flagRecord = true;
		} else if (strcmp(*argv, "-f") ==0) {
			targetName = *++argv;
		}
	}

	if (targetName == NULL) {
		int n = scandir(".", &nameList, filterExtension, alphasort);

		if (n == -1) {
			perror("open dir");
			exit(EXIT_FAILURE);
		}

		int total = 0;
		int success = 0;
		int fail = 0;
		int ignore = 0;

		while (n--) {
			printf("[TESTING] %s\n", nameList[n]->d_name);

			char* fileName = malloc(sizeof("../tests/") + sizeof(nameList[n]->d_name) + 1); //file can only be relative to compiler for now
			strcpy(fileName, "../tests/");
			strcpy(fileName + sizeof("../tests/") - 1, nameList[n]->d_name);

			ReturnType answer = testFile(fileName, flagRecord);
			total++;
			switch (answer) {
				case SUCCESS:
					success++;
					break;
				case FAIL:
					fail++;
					break;
				case IGNORE:
					ignore++;
					break;
			}
			
			free(fileName);
			free(nameList[n]);
		}

		free(nameList);

		printf("\033[0;32msuccess: %d/%d\033[0m, \033[0;33mignored: %d/%d\033[0m, \033[0;31mfailed: %d/%d\033[0m\n", success, total, ignore, total, fail, total);

	} else {
		testFile(targetName, flagRecord);
	}

	return 0;
}
