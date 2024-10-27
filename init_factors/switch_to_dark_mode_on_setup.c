/*
- Artificial Intelligence does this does that. 
- Man fuck them it's useless and it ruined some of my code. 
- You might say these things are experimental and not that much accurate but that motherfucker from nvidia said that it's useless to learn "programming", jokes on you nigga.
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#define BUFFER_SIZE 1024

const char* ___get__system__property(const char *property, const char *default_value) {
    static char buffer[BUFFER_SIZE];
    snprintf(buffer, sizeof(buffer), "getprop %s", property);
    FILE *fp = popen(buffer, "r");
    if (fp == NULL) {
        return default_value;
    }
    if (fgets(buffer, sizeof(buffer), fp) != NULL) {
        buffer[strcspn(buffer, "\n")] = '\0';
        pclose(fp);
        return buffer;
    }
    pclose(fp);
    return default_value;
}

int ___is__setup__is__over() {
    char *is_device_setup_finished = ___get__system__property("persist.sys.setupwizard", "false");
    char *setupwizard_mode = ___get__system__property("ro.setupwizard.mode", "false");

    if (strcmp(is_device_setup_finished, "FINISH") == 0) {
        if (strcmp(setupwizard_mode, "OPTIONAL") == 0 || strcmp(setupwizard_mode, "DISABLED") == 0) {
            return 0;
        }
    }
    return 1;
}

int ___set__system__settings(const char *table, const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    char upperTable[BUFFER_SIZE];
    size_t i;

    // Convert table name to uppercase
    for (i = 0; table[i] != '\0' && i < sizeof(upperTable) - 1; i++) {
        upperTable[i] = toupper((unsigned char)table[i]);
    }
    upperTable[i] = '\0'; // Null-terminate the uppercase string

    // Check if the table name is valid
    if (strcmp(upperTable, "SYSTEM") != 0 && strcmp(upperTable, "SECURE") != 0 && strcmp(upperTable, "GLOBAL") != 0) {
        return 1;
    }

    // Prepare the command based on the value type
    if (isInt) {
        snprintf(command, sizeof(command), "settings put %s %s %d", table, prop, *(const int *)value);
    }
	else {
        snprintf(command, sizeof(command), "settings put %s %s %s", table, prop, (const char *)value);
    }

    // Execute the command
    if (system(command) != 0) {
        printf(" - you're screwed...\n");
        return 1;
    }
}

int main() {
    int the_setup_is_over_right = ___is__setup__is__over();
    
    if (the_setup_is_over_right == 1) {
        int night_mode_value = 1;
        ___set__system__settings("secure", "ui_night_mode", &night_mode_value, true);
    }
    return 0;
}