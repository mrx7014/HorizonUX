#include "horizonutils.h"

int touch(const char *__file) {
    FILE *file = fopen(__file, "a");
    if(!file) {
        return 1;
    }
    fclose(file);
    return 0;
}

int printdbg(const char *Message) {
    char actual_message[1028];
    snprintf(actual_message, sizeof(actual_message), "DEBUG_MESSAGE: %s", Message);
    if(DEBUG_MESSAGES_ARE_ENABLED) {
        if(WRITE_LOGS_INTO_A_FILE) {
            FILE *log4horizon = fopen(LOG4HORIZONFILE, "a");
            if(!log4horizon) { 
                LOG4HORIZONFILE = "/data/local/tmp/logs.log";
                log4horizon = fopen(LOG4HORIZONFILE, "a");
            }
            if(log4horizon) {
                fprintf(log4horizon, "%s\n", actual_message);
                fclose(log4horizon);
            }
            else {
                fprintf(stderr, "Failed to open log file: %s\n", LOG4HORIZONFILE);
            }
        }
        else {
            printf("\033[0;31m%s\n", actual_message);
        }
    }
    return 0;
}

bool execute_scripts(const char *file, char *const argv[]) {
    int return_status = execvp(file, argv);
    if (return_status == -1) {
        return false;
    }
    return true;
}


bool erase_file_content(const char *__file) {
    FILE *file = fopen(__file, "w");
    if(!file) {
        printdbg("erase_file_content(): Error opening file to wipe its content.");
        return false;
    }
    fclose(file);
    return true;
}

bool check_device_status(const char *requiredState) {
    FILE *fp = NULL;
    if(strcmp(requiredState, "recovery") == 0 || strcmp(requiredState, "rcm") == 0) {
        fp = fopen("/sbin/recovery", "r");
    }
    else if(strcmp(requiredState, "android") == 0) {
        fp = fopen("/system/bin/sh", "r");
    }
    if(fp != NULL) {
        fclose(fp);
        return true;
    }
    return false;
}