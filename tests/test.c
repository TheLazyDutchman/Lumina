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
		execl("../lumina", "lumina", "-r", fileName, (char*)0);
		perror("execl");
		_exit(1);
	}
}

int main(int argc, char** argv) {
	struct dirent **nameList;

	int n = scandir(".", &nameList, filterExtension, alphasort);

	if (n == -1) {
		perror("open dir");
		exit(EXIT_FAILURE);
	}

	while (n--) {
		printf("%s\n", nameList[n]->d_name);
		free(nameList[n]);
	}

	free(nameList);

	return 0;
}
