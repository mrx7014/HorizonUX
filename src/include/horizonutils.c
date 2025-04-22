//
// Copyright (C) 2025 Luna
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

#include <horizonutils.h>

void error_print(const char *Message) {
    FILE *log4horizon = fopen(LOG4HORIZONFILE, "a");
    if(!log4horizon) {
        printf("\e[0;31merror_print(): Failed to open log file: %s\e[0;37m\n", LOG4HORIZONFILE);
        return;
    }
    fprintf(log4horizon, "%s\n", Message);
    fclose(log4horizon);
    fprintf(stderr, "\e[0;31m%s\e[0;37m\n", Message);
}

void error_print_extended(const char *message, const char *additional_args) {
    if(!message) {
        error_print("error_print_extended(): Message cannot be NULL!");
        return;
    }
    const char *safe_args = additional_args ? additional_args : "";
    size_t kimikimi_ = strlen(message) + strlen(safe_args) + 2;
    char *kimikimi = malloc(kimikimi_);
    if(!kimikimi) {
        error_print("error_print_extended(): Failed to allocate memory.");
        exit(1);
    }
    snprintf(kimikimi, kimikimi_, "%s %s", message, safe_args);
    error_print(kimikimi);
    free(kimikimi);
}

bool erase_file_content(const char *__file) {
    FILE *fileConstantAgain = fopen(__file, "w");
    if(!fileConstantAgain) {
        return false;
    }
    fclose(fileConstantAgain);
    return true;
}

int executeCommands(const char *command, bool requiresOutput) {
    if(command && (strstr(command, ";") || strstr(command, "&&") || strstr(command, "|") || strstr(command, "`") || strstr(command, "$("))) {
        error_print("executeScripts(): Nice try diddy!");
        exit(1);
    }
    char *command__ = malloc(strlen(command) + 1);
    if(!command__) {
        error_print("executeCommands(): Failed to allocate memory.");
        exit(1);
    }
    strcpy(command__, command);
    FILE *fp = popen(command__, "r");
    free(command__);
    if(!fp) {
        error_print("executeCommands(): Failed to execute command.");
        return 1;
    }
    if(requiresOutput) {
        char buffer[1024];
        while(fgets(buffer, sizeof(buffer), fp) != NULL) {
            buffer[strcspn(buffer, "\n")] = '\0';  // Remove newline
            error_print_extended("executeCommands():", buffer);
        }
    }
    int __exit_status = pclose(fp);
    if(__exit_status == -1) {
        error_print("executeCommands(): Failed to close the dawn file for some dawn reason.");
        return 1;
    }
    return (WIFEXITED(__exit_status)) ? WEXITSTATUS(__exit_status) : 1;
}

int executeScripts(const char *__script__file, const char *__args, bool requiresOutput) {
    if(__args && (strstr(__args, ";") || strstr(__args, "&&") || strstr(__args, "|") || strstr(__args, "`") || strstr(__args, "$("))) {
        error_print("executeScripts(): Nice try diddy.");
        exit(1);
    }
    size_t sizeOfTheDawn = strlen(__script__file) + strlen(__args) + 5;
    char *commandAlloc = malloc(sizeOfTheDawn);
    if(!commandAlloc) {
        error_print("executeScripts(): Failed to allocate memory.");
        exit(1);
    }
    snprintf(commandAlloc, sizeOfTheDawn, "'%s' %s", __script__file, __args ? __args : "");
    FILE *scriptWithArguments  = popen(commandAlloc, "r");
    free(commandAlloc);
    if(!scriptWithArguments) {
        error_print("executeScripts(): Failed to execute script.");
        return 1;
    }
    if(requiresOutput) {
        char fuckingBufferFuckingShit[2048];
        while(fgets(fuckingBufferFuckingShit, sizeof(fuckingBufferFuckingShit), scriptWithArguments) != NULL) {
            fuckingBufferFuckingShit[strcspn(fuckingBufferFuckingShit, "\n")] = '\0';
            error_print_extended("executeScripts():", fuckingBufferFuckingShit);
        }
    }
    int __exit_status = pclose(scriptWithArguments);
    if(__exit_status == -1) {
        error_print_extended("executeScripts(): Failed to close process. Error:", strerror(errno));
        return 1;
    }
    return (WIFEXITED(__exit_status)) ? WEXITSTATUS(__exit_status) : 1;
}

// prevents bastards from running any malicious commands
// this searches some sensitive strings to ensure that the script is safe
// please verify your scripts before running it PLEASE 🙏
int searchBlockListedStrings(const char *__filename, const char *__search_str) {
    size_t sizeOfTheseCraps = sizeof(__filename) + sizeof(__search_str) + 3;
    char *command = malloc(sizeOfTheseCraps);
    if(!command) {
        error_print("searchBlockListedStrings(): Failed to allocate memory.");
        exit(1);
    }
    snprintf(command, sizeOfTheseCraps, "grep -q '%s' '%s'", __search_str, __filename);
    FILE *file = popen(command, "r");
    free(command);
    if(!file) {
        error_print("searchBlockListedStrings(): Failed to open file.");
        return 1;
    }
    char haystack[1028];
    while(fgets(haystack, sizeof(haystack), file) != NULL) {
        haystack[strcspn(haystack, "\n")] = '\0';
        if(strstr(haystack, __search_str) != NULL) {
            fclose(file);
            error_print("searchBlockListedStrings(): Malicious code execution detected in the script file.");
            return 1;
        }
    }
    fclose(file);
    return 0;
}

// yet another thing to protect good peoples from getting fucked
// this ensures that the chosen is a bash script and if it's not one
// it'll return 1 to make the program to stop from executing that bastard
int verifyScriptStatusUsingShell(const char *__filename) {
    size_t commandLength = strlen(__filename) + strlen("file | grep -q 'ASCII text executable'") + 5;
    char *command = malloc(commandLength);
    int written = snprintf(command, commandLength, "file \"%s\" | grep -q 'ASCII text executable'", __filename);
    if(written < 0 || written >= sizeof(command)) {
        error_print("verifyScriptStatusUsingShell(): Command truncation detected.");
        return 1;
    }
    int exit__status = executeCommands(command, false);
    free(command);
    return exit__status;
}

// Checks if a given string contains blacklisted substrings
int checkBlocklistedStringsNChar(const char *__haystack) {
    // Thnx Pranav 🩷
    static const char *blocklistedStrings[] = {
        "xbl_config",
        "xbl_config_a",
        "xbl_config_b",
        "fsc",
        "fsg",
        "modem",
        "modemst1",
        "modemst2",
        "abl",
        "abl_a",
        "abl_b",
        "keymaster",
        "keymaster_a",
        "keymaster_b",
        "sda",
        "sdb",
        "sdc",
        "sdd",
        "sde",
        "sdf",
        "splash",
        "dtbo",
        "dtbo_a",
        "dtbo_b",
        "bluetooth",
        "bluetooth_a",
        "bluetooth_b",
        "cust",
        "xbl_a",
        "xbl_b",
        "persist",
        "/dev/block/bootdevice/by-name/",
        "/dev/block/by-name/",
        "/dev/block/",
        "blockdev",
        "--setrw",
        "/system/bin/dd",
        "/vendor/bin/dd",
        "dd"
    };
    size_t blocklistedStringArraySize = sizeof(blocklistedStrings) / sizeof(blocklistedStrings[0]);
    for(int i = 0; i < blocklistedStringArraySize; i++) {
        switch(searchBlockListedStrings(__haystack, blocklistedStrings[i])) {
            case 1:
                error_print_extended("checkBlocklistedStringsNChar(): Found Blocklisted string:", blocklistedStrings[i]);
                error_print("checkBlocklistedStringsNChar(): Stopping execution process...");
                return 1;
            default:
                continue;
        }
    }
    return 0;
}

char *combineShyt(const char *command, const char *value) {
    size_t nom_nom = strlen(command) + strlen(value) + 2;
    char *buffer = (char *)malloc(nom_nom);
    if (!buffer) {
        error_print("combineShyt(): Failed to allocate memory.");
        exit(1);
    }
    snprintf(buffer, nom_nom, "%s %s", command, value);
    return buffer;
}

// logs to console
void consoleLog(char *text, char *extr_factor) {
    FILE *log4horizon = fopen(LOG4HORIZONFILE, "a");
    if(!log4horizon) return;
    fprintf(log4horizon, "%s %s\n", text, extr_factor);
    fclose(log4horizon);
}

// throws messages and stops the instance.
void abort_instance(const char *text, const char *extr_factor) {
    error_print_extended(text, extr_factor);
    exit(1);
}