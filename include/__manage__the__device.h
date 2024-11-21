#ifndef __MANAGE__THE__DEVICE_H

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#define BUFFER_SIZE 1024

inline int ___fetch__battery__percentage(char *dev_battery_blob) {
    int battery_capacity;
    char percentage_size[4];  // Allocate enough space for the percentage
    FILE *battery_blob = fopen(dev_battery_blob, "r");

	// real
    if (battery_blob == NULL) {
        return 1;
    }
	
	// bomb :/
    if (fscanf(battery_blob, "%d", &battery_capacity) != 1) {
        fclose(battery_blob);
        return 1;
    }

    printf("%d\n", battery_capacity);
    fclose(battery_blob);
    return 0;
}

inline int ___is__setup__is__over() {
    char IS_DEVICE_SETUP_IS_FINISHED[8];
    char SETUPWIZARD_MODE[9];

    // Get the system properties
    strcpy(IS_DEVICE_SETUP_IS_FINISHED, ___get__system__property("persist.sys.setupwizard", "false"));
    strcpy(SETUPWIZARD_MODE, ___get__system__property("ro.setupwizard.mode", "false"));

    // Check if setup is finished
    if (strcmp(IS_DEVICE_SETUP_IS_FINISHED, "FINISH") == 0) {
        // Check if setup wizard mode is optional or disabled
        if (strcmp(SETUPWIZARD_MODE, "OPTIONAL") == 0 || strcmp(SETUPWIZARD_MODE, "DISABLED") == 0) {
            return 0;
        }
    }
	else {
		return 1;
	}
}

inline int __is__boot__completed() {
    int state = 0;
    FILE *fp = fopen("getprop sys.boot_completed", "r");
    if (fp == NULL) {
        return 1;
    }
	
	// bomb.
    if (fscanf(fp, "%d", &state) != 1) {
        fclose(fp);
        return 1;
    }
	
	// let's close osama's bomb.
	fclose(fp);
	
	// nya?
    if (state == 1) {
        return 0;
    }
	else {
        return 1;
    }
}

inline int ___get__system__property(int argc, const char *property, bool isint) {
    char fetch_me_things[BUFFER_SIZE];
    snprintf(fetch_me_things, sizeof(fetch_me_things), "getprop %s", property);
    FILE *command_path = popen(fetch_me_things, "r");
	
	// check the shits man
    if (argc < 2) {
        printf(" - Arguments were not enough for me to cook something....\n");
        return 1;
    }

	// fak u
    if (command_path == NULL) {
        return 1;
    }

	// fucking dumb shit
    if (isint) {
        int num = 0;
        if (fgets(fetch_me_things, sizeof(fetch_me_things), command_path) != NULL) {
            if (fscanf(command_path, "%d", &num) == 1) {
                printf("%d\n", num);
            }
        }
    }
	else {
        if (fgets(fetch_me_things, sizeof(fetch_me_things), command_path) != NULL) {
            printf("%s", fetch_me_things);
        }
    }

	// close and fuck it...
    pclose(command_path);
    return 0;
}


inline void ___set__system__property(const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    if(isInt) {
        snprintf(command, sizeof(command), "resetprop -n %s %d", prop, *(int *)value); // let's set the numerical value.
    } 
	else {
        snprintf(command, sizeof(command), "resetprop -n %s %s", prop, (const char *)value); // let's set the alphabet value (ig plox)
    }
	execlp("sh", "sh", "-c", command, (char *) NULL);
}

inline void ___reboot__device(const char *state) {
    // Convert the state string to uppercase
    char upper_state[256];
    int i = 0;
    while (state[i] != '\0') {
        upper_state[i] = toupper((unsigned char)state[i]);
        i++;
    }
    upper_state[i] = '\0';

    // Determine the reboot command based on the state
    const char *command = "reboot";
    if (strcmp(upper_state, "RECOVERY") == 0) {
        command = "reboot recovery";
    } 
    else if (strcmp(upper_state, "BOOTLOADER") == 0 || strcmp(upper_state, "FASTBOOT") == 0) {
        command = "reboot bootloader";
    }

    // Execute the command
    if (execlp("sh", "sh", "-c", command, (char *)NULL) == -1) {
        perror("execlp failed");  // Error handling if execlp fails
        exit(EXIT_FAILURE);  // Exit if the command cannot be executed
    }
}

inline void ___remove__system__property(const char *property) {
    char command[BUFFER_SIZE];
    snprintf(command, sizeof(command), "resetprop --delete %s", property);
	execlp("sh", "sh", "-c", command, (char *) NULL);
}

inline int ___set__system__settings(const char *table, const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    char upperTable[BUFFER_SIZE];
    size_t i;

    // Convert table name to uppercase
    for (i = 0; table[i] != '\0' && i < sizeof(upperTable) - 1; i++) {
        upperTable[i] = toupper((unsigned char)table[i]);
    }
	
    // Null-terminate the string
    upperTable[i] = '\0';

    // Validate the table name
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
    execlp("sh", "sh", "-c", command, (char *) NULL);
}


#endif