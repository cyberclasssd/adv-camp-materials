#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char name[64];
    printf("name: ");
    fgets(name, 64, stdin);
    name[strlen(name) - 1] = 0;

    while (1) {
        puts("1. say hello");
        puts("2. rename yourself");
        puts("3. exit");

        int choice;
        scanf("%d", &choice);
        getchar();

        switch (choice) {
            case 1:
                printf("Hello %s, how is your day?\n", name);
                break;
            case 2:
                printf("name: ");
                fgets(name, 64, stdin);
                name[strlen(name) - 1] = 0;
                printf("your new name is: %s\n", name);
                break;
            case 3:
                exit(0);
        }
    }
}