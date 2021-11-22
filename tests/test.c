#include <errno.h>
#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

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

void testFile(char* fileName) {
	int filedes[2];
	if (pipe(filedes) == -1) {
		perror("pipe");
		exit(1);
	}

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
	FILE* testFile = fopen(testFileName, "r");
	if (testFile == NULL) {
		printf("could not find file '%s' - dumping the output without testing:\n\n", testFileName);
	}

	char buffer[4096];
	char reference[4096];
	while (1) {
		ssize_t count = read(filedes[0], buffer, sizeof(buffer));
		if (testFile != NULL) {
			ssize_t refCount = fread(reference, 1, count, testFile);
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

			if (testFile == NULL) {
				printf("%s", output);
			} else if (strncmp(buffer, reference, count) != 0) {
				printf("the output is not the same as the expected output:\nexpected: %s\n\nactual: %s\n\n", reference, buffer);
				//TODO: store that this file had an error
			}

			free(output);
		}
	}

	if (testFile == NULL) {
		printf("\n\n");
	}

	free(testFileName);
	close(filedes[0]);
	wait(0);
}

int main(int argc, char** argv) {
	struct dirent **nameList;

	int n = scandir(".", &nameList, filterExtension, alphasort);

	if (n == -1) {
		perror("open dir");
		exit(EXIT_FAILURE);
	}

	while (n--) {
		printf("[TESTING] %s\n", nameList[n]->d_name);

		char* fileName = malloc(sizeof("../tests/") + sizeof(nameList[n]->d_name) + 1); //file can only be relative to compiler for now
		strcpy(fileName, "../tests/");
		strcpy(fileName + sizeof("../tests/") - 1, nameList[n]->d_name);

		testFile(fileName);
		
		free(fileName);
		free(nameList[n]);
	}

	free(nameList);

	return 0;
}
