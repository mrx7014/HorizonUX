#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    char *args[] = {"e2fsck", "-f", "/data/adb/ksu/modules_update.img", NULL};
    char *args_two[] = {"resize2fs", "-f", "/data/adb/ksu/modules_update.img", "500M", NULL};

    // Fork for e2fsck
    pid_t pid1 = fork();
    if (pid1 == 0) {
        execvp(args[0], args);
        exit(1);
    }

    // Fork for resize2fs, but only if we are in the parent process
    if (pid1 > 0) {
        pid_t pid2 = fork();
        if (pid2 == 0) {
            execvp(args_two[0], args_two);
            exit(1);
        }
    }

    // Parent process returns immediately
    return 0;
}
