#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>

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
