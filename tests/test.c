#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>

int main(int argc, char** argv) {
	struct dirent **nameList;

	int n = scandir(".", &nameList, NULL, alphasort);

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
