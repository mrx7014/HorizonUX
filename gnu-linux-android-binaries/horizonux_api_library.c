#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <dirent.h>
#include <sys/types.h>
#include <fcntl.h>
#define BUFFER_SIZE 1024

/*
- Artificial Intelligence does this does that. 
- Man fuck them it's useless and it ruined some of my code. 
- You might say these things are experimental and not that much accurate but that motherfucker from nvidia said that it's useless to learn "programming", jokes on you nigga.
*/

int ___validate__input__length(const char *input, size_t max_length) {
    return (input && strlen(input) < max_length);
}

int ___real__battery__blob(char *dev_battery_blob) {
	if(dev_battery_blob == NULL) {
		return 1;
	}
	else {
		return 0;
	}
}

int ___is__setup__is__over() {
    char IS_DEVICE_SETUP_IS_FINISHED[8]; // Increased size to hold "FINISH"
    char SETUPWIZARD_MODE[9]; // Increased size to hold "DISABLED"

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

int ___set__system__settings(const char *table, const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    char upperTable[BUFFER_SIZE]; // Create a buffer for the uppercase table name
    size_t i;

    // Convert table name to uppercase
    for (i = 0; table[i] != '\0' && i < sizeof(upperTable) - 1; i++) {
        upperTable[i] = toupper((unsigned char)table[i]);
    }
	
	// Null-terminate the uppercase string
    upperTable[i] = '\0'; 
	// Null-terminate the uppercase string

    // Check if the table name is valid
    if (strcmp(upperTable, "SYSTEM") != 0 && strcmp(upperTable, "SECURE") != 0 && strcmp(upperTable, "GLOBAL") != 0) {
        return 1;
    }

    // Prepare the command based on the value type
    if(isInt) {
        snprintf(command, sizeof(command), "settings put %s %s %d", table, prop, *(const int *)value);
    }
	else {
        snprintf(command, sizeof(command), "settings put %s %s %s", table, prop, (const char *)value);
    }
    // Prepare the command based on the value type

    // Execute the command
    if(system(command) != 0) {
		console_log(" - you're screwed...");
		return 1;
	}
}

int ___get__system__settings__value(const char *table, const char *prop, bool asInt) {
    char buffer[BUFFER_SIZE];
    char command[BUFFER_SIZE];
	char upperTable[BUFFER_SIZE]; // Create a buffer for the uppercase table name
    size_t i;
    // Convert table name to uppercase
    for (i = 0; table[i] != '\0' && i < sizeof(upperTable) - 1; i++) {
        upperTable[i] = toupper((unsigned char)table[i]);
    }
	
	// Null-terminate the uppercase string
    upperTable[i] = '\0'; 
	// Null-terminate the uppercase string

    // Check if the table name is valid
    if (strcmp(upperTable, "SYSTEM") != 0 && strcmp(upperTable, "SECURE") != 0 && strcmp(upperTable, "GLOBAL") != 0) {
        return 1;
    }
	// vaaaaaaaaaaaaaaaaaaaa
    snprintf(command, sizeof(command), "settings get %s %s", table, prop);
    FILE *fp = popen(command, "r");
    if(fp == NULL) {
        return 1;
    }
    if(asInt) {
        int num = 0;
        if(fgets(buffer, sizeof(buffer), fp) != NULL) {
            if(sscanf(buffer, "%d", &num) == 1) {
                printf("%d\n", num); // let's get the numerical value.
            }
        }
    } 
	else {
        while(fgets(buffer, sizeof(buffer), fp) != NULL) {
            printf("%s", buffer); // let's set the alphabet value. (ig plox)
        }
    }
    pclose(fp);
}

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

// [Luna] - changed the function name from ___fetch__battery__percentage to ___fetch__battery__percentage__a30 @3:10AM-10/11/2024
// [Luna] - reverted to the default name, just for getting the blob.
void ___fetch__battery__percentage(char *dev_battery_blob) {
    int battery_capacity;
    char percentage_size[4];
    FILE *battery_blob = NULL;

	// no
    if(___real__battery__blob(dev_battery_blob)) {
        battery_blob = fopen(dev_battery_blob, "r");
    }
	else {
        battery_blob = fopen("/sys/devices/platform/battery/power_supply/battery/capacity", "r");
    }

	// no
    if(battery_blob == NULL) {
        printf("-0\n");
        return;
    }
	
	// no
    if(fgets(percentage_size, sizeof(percentage_size), battery_blob) != NULL) {
        if(sscanf(percentage_size, "%d", &battery_capacity) == 1) {
            printf("%d\n", battery_capacity);
        } else {
            printf("-0\n");
        }
    }

	// ok
    fclose(battery_blob);
}

void ___set__system__property(const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    if(isInt) {
        snprintf(command, sizeof(command), "resetprop -n %s %d", prop, *(int *)value); // let's set the numerical value.
    } 
	else {
        snprintf(command, sizeof(command), "resetprop -n %s %s", prop, (const char *)value); // let's set the alphabet value (ig plox)
    }
    system(command);
}

void ___remove__system__property(const char *property) {
    char command[BUFFER_SIZE];
    snprintf(command, sizeof(command), "resetprop --delete %s", property);
    system(command);
}

// ___change__given__line__on__a__file "prop / flag without it's value" "flag / prop value" "system property file path"
void ___edit__prop__in__a__file(const char* pat, const char* value, const char* filename) {
    FILE* file = fopen(filename, "r");
    if(file == NULL) {
        printf(" - Failed to open file for reading.");
        return;
    }
    FILE* tempFile = fopen("temp.txt", "w");
    if(tempFile == NULL) {
        fclose(file);
        printf(" - Failed to create temporary file for writing.");
        return;
    }
    char line[BUFFER_SIZE];
    while(fgets(line, sizeof(line), file)) {
        if(strncmp(line, pat, strlen(pat)) == 0) {
            fprintf(tempFile, "%s=%s\n", pat, value);
        }
		else {
            fputs(line, tempFile);
        }
    }
    fclose(file);
    fclose(tempFile);
    if(remove(filename) != 0) {
        printf(" - Failed to remove original file.");
    }
    else if(rename("temp.txt", filename) != 0) {
        printf(" - Failed to rename temporary file.");
    }
}

void ___execute__command(const char *command, bool *ignore_child_processes) {
    pid_t pid = fork();
    if(pid == 0) {
        execlp("sh", "sh", "-c", command, (char *)NULL);
        exit(EXIT_FAILURE); // Close if execlp fails
    } 
	else if(!ignore_child_processes) {
        printf(" - waiting for pid (process-id) %d to finish.", pid);
        waitpid(pid, NULL, 0); // Wait for the child process to finish
    }
}

void ___make__OpenRecoveryScript() {
    system("touch /cache/recovery/command"); // make a dummy file lol
    system("touch /data/horizonux_rcm"); // make a dummy file for the installer script.
    FILE *file = fopen("/cache/recovery/command", "w"); // let's open that dummy file to write the script.
    if(file == NULL) {
        perror(" - Failed to create recovery script");
        return;
    }
    fprintf(file, "--data_resizing\n--delete_apn_changes\n--wipe_cache\n--update_package=/data/horizonux/snapshots/snapshot.zip"); // [Luna] - nothing to say @3:04AM 10/11/2024
    fclose(file);
    system("chmod 755 /cache/recovery/command"); // Optionally, make the script executable to fix feature errors;
}

void ___reboot__device(const char *state) {
    if(strcmp(state, "recovery") == 0) {
        system("reboot recovery");
    } 
	else if(strcmp(state, "bootloader") == 0) {
        system("reboot bootloader");
    } 
	else {
        system("reboot");
    }
}

void ___mount__device__partitions__a30(const char *filesystem_type, const char *options, const char *block_name, const char *mount_point) {
    char mount_flags[BUFFER_SIZE];

    // stop the function from doing its job if it detects overflow.
    if(!___validate__input__length(filesystem_type, 5) || !___validate__input__length(options, 136) || !___validate__input__length(block_name, 9) || !___validate__input__length(mount_point, 17)) {
        fprintf(stderr, " - can't mount, the input length is bigger than the one in the program.\n"); // [Luna] - nothing to say @3:14AM 10/11/2024
        return;
    }

    // merge the arguments together.
    int len = snprintf(mount_flags, sizeof(mount_flags), "mount -t %s -o %s /dev/block/platform/13500000.dwmmc0/by-name/%s %s", filesystem_type, options, block_name, mount_point);
    if(len < 0 || len >= sizeof(mount_flags)) {
        fprintf(stderr, " - not able to create stuffs to mount %s\n", block_name); // [Luna] - nothing to say @3:14AM 10/11/2024
        return;
    }

    // mount the devices.
    execlp("sh", "sh", "-c", mount_flags, (char *)NULL);
}

void ___disable__magisk__module() {
    struct dirent *entry;
    DIR *dp = opendir("/data/adb/modules/");

    if(dp == NULL) {
        return;
    }

    while((entry = readdir(dp)) != NULL) {
        // Skip the current (.) and parent (..) directories
        if(strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) {
            continue;
        }

        // Construct the path to the module directory
        char module_path[256];
        snprintf(module_path, sizeof(module_path), "%s%s", "/data/adb/modules/", entry->d_name);

        // Create the path for the "disable" file
        char disable_path[256];
        snprintf(disable_path, sizeof(disable_path), "%s/disable", module_path);

        // Create or open the "disable" file
        int fd = open(disable_path, O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
        if(fd == -1) {
            perror("open");
            continue;
        }

        // Close the file descriptor
        close(fd);
    }
    closedir(dp);
}

void ___check__root__privileges() {
    if(getuid() != 0) {
        exit(EXIT_FAILURE);
    }
}