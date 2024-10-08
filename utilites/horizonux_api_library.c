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

int ___validate__input__length(const char *input, size_t max_length) {
    return (input && strlen(input) < max_length);
}

void ___get__system__property(const char *property, bool asInt) {
    char buffer[BUFFER_SIZE];
    char command[BUFFER_SIZE];
    snprintf(command, sizeof(command), "getprop %s", property);
    FILE *fp = popen(command, "r");
    if (fp == NULL) {
        return;
    }
    if (asInt) {
        int num = 0;
        if (fgets(buffer, sizeof(buffer), fp) != NULL) {
            if (sscanf(buffer, "%d", &num) == 1) {
                printf("%d\n", num); // let's get the numerical value.
            }
        }
    }
	else {
        while (fgets(buffer, sizeof(buffer), fp) != NULL) {
            printf("%s", buffer); // let's set the alphabet value. (ig plox)
        }
    }
    pclose(fp);
}

// cd /sys/devices/platform/battery/power_supply/battery
// for i in *; do if [ "$(cat $i)" == $(acpi | cut -c 12-12) ]; then echo $i; fi; done
void ___fetch__battery__percentage() {
	// setup some local variables.
    int battery_capacity = 0;
    char percentage_size[4];
    // Galaxy A30 blob path.
    FILE *battery_blob = fopen("/sys/devices/platform/battery/power_supply/battery/capacity", "r");
    // If actual a30 path fails, it'll try the generic wsl path.
    if (battery_blob == NULL) {
        battery_blob = fopen("/sys/class/power_supply/battery/capacity", "r");
        if (battery_blob == NULL) {
            return;
        }
    }
    // Read the battery capacity
    if (fgets(percentage_size, sizeof(percentage_size), battery_blob) != NULL) {
        if (sscanf(percentage_size, "%d", &battery_capacity) == 1) {
            printf("%d\n", battery_capacity);
        }
    }
    fclose(battery_blob); // close the file after opening it..
}

void ___set__system__property(const char *prop, const void *value, bool isInt) {
    char command[BUFFER_SIZE];
    if(isInt) {
        snprintf(command, sizeof(command), "resetprop -n %s %d", prop, *(int *)value); // let's set the numerical value.
    } 
	else {
        snprintf(command, sizeof(command), "resetprop -n %s %s", prop, (const char *)value); // let's set the alphabet value (ig plox)
    }
}

void ___remove__system__property(const char *property) {
    char command[BUFFER_SIZE];
    snprintf(command, sizeof(command), "resetprop --delete %s", property);
}

// ___change__given__line__on__a__file "prop / flag without it's value" "flag / prop value" "system property file path"
void ___edit__prop__in__a__file(const char* pat, const char* value, const char* filename) {
    FILE* file = fopen(filename, "r");
    if (file == NULL) {
        printf(" - Failed to open file for reading.");
        return;
    }
    FILE* tempFile = fopen("temp.txt", "w");
    if (tempFile == NULL) {
        fclose(file);
        printf(" - Failed to create temporary file for writing.");
        return;
    }
    char line[BUFFER_SIZE];
    while (fgets(line, sizeof(line), file)) {
        if (strncmp(line, pat, strlen(pat)) == 0) {
            fprintf(tempFile, "%s=%s\n", pat, value);
        } 
		else {
            fputs(line, tempFile);
        }
    }
    fclose(file);
    fclose(tempFile);
    if (remove(filename) != 0) {
        printf(" - Failed to remove original file.");
    }
    if (rename("temp.txt", filename) != 0) {
        printf(" - Failed to rename temporary file.");
    }
}

void ___execute__command(const char *command, bool *ignore_child_processes) {
    pid_t pid = fork();
	if(!ignore_child_processes) {
		printf(" - waiting for pid (process-id) %d to finish.", getpid());
		waitpid(pid, NULL, 0); // let's wait for the child process to get finished
	}
    if (pid == 0) {
        execlp("sh", "sh", "-c", command, (char *)NULL);
		exit(EXIT_FAILURE); // omagod, we have to close if the dawn execlp fails
    }
}

void ___make__OpenRecoveryScript() {
	system("touch /cache/recovery/command"); // make a dummy file lol
    FILE *file = fopen("/cache/recovery/command", "w"); // let's open that dummy file to write the script.
    if (file == NULL) {
        perror(" - Failed to create recovery script");
        return;
    }

	// let's write that in oneline and pray jesus.
	fprintf(file, "#!/sbin/sh\nif [ -e \"/sbin/recovery\" ]; then\n\ttwrp install /data/pulseux/snapshots/snapshot.zip\nelse\n\techo \" - Device is not in the recovery mode, exiting...\"\nfi\n");
    fclose(file); // imma close the file
    system("chmod 755 /cache/recovery/command"); // Optionally, imma make the script executable to fix feature errors;
}

void ___reboot__device(const char *state) {
    if (strcmp(state, "recovery") == 0) {
        system("reboot recovery");
    }
	else if (strcmp(state, "bootloader") == 0) {
        system("reboot bootloader");
    }
	else {
        system("reboot");
    }
}

void ___mount__device__partitions__a30(const char *filesystem_type, const char *options, const char *block_name, const char *mount_point) {
    char mount_flags[BUFFER_SIZE];
	
	// stop the function from doing it's job if it detects overflow.
    if (!___validate__input__length(filesystem_type, 5) || !___validate__input__length(options, 136) || !___validate__input__length(block_name, 9) || !___validate__input__length(mount_point, 17)) {
        fprintf(stderr, "Input parameters are too long.\n");
        return;
    }
	
	// merge the arguments together lmao.
    int len = snprintf(mount_flags, sizeof(mount_flags), "mount -t %s -o %s /dev/block/platform/13500000.dwmmc0/by-name/%s %s", filesystem_type, options, block_name, mount_point);					   
    if (len < 0 || len >= sizeof(mount_flags)) {
        fprintf(stderr, "Error creating mount command: command too long.\n");
        return;
    }
		
	// mount the devices.
    execlp("sh", "sh", "-c", mount_flags, (char *)NULL);
}

// won't be possible without the help of chatgpt.
void ___disable__magisk__module() {
    struct dirent *entry;
    DIR *dp = opendir("/data/adb/modules/");
    
    if (dp == NULL) {
        return EXIT_FAILURE;
    }

    while ((entry = readdir(dp)) != NULL) {
        // Skip the current (.) and parent (..) directories
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) {
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
        if (fd == -1) {
            perror("open");
            continue; // Continue to the next module if there's an error
        }

        // Close the file descriptor
        close(fd);
    }
	// close the thing yk.
    closedir(dp);
}

void ___check__root__privileges() {
    if (getuid() != 0) {
        exit(EXIT_FAILURE);
    }
}