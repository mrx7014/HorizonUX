#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    char *args[] = {"e2fsck", "-f", "/data/adb/ksu/modules_update.img", NULL};
    char *args_two[] = {"resize2fs", "-f", "/data/adb/ksu/modules_update.img", "500M", NULL};
    pid_t pid1 = fork();
    if (pid1 == 0) {
        execvp(args[0], args);
    }
    wait(NULL);
    pid_t pid2 = fork();
    if (pid2 == 0) {
        execvp(args_two[0], args_two);
    }
    wait(NULL);
    return 0;
}
