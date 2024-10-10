#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>

// import these from the lib file
void ___get__system__property(const char *property, bool asInt);
void ___check__root__privileges();
// import these from the lib file

int main() {
	// Check for root privileges.
    ___check__root__privileges();
	
	// Check if we are booted into the android environment
	if (___get__system__property("sys.boot_completed", "true") + ___get__system__property("dev.boot_completed", "true") == 2) {
		FILE *file = fopen("/sys/block/mmcblk0/queue/scheduler", "w"); // Open the scheduler file for writing (this wipes the file)
		fprintf(file, "fio"); // Write the desired scheduler policy
		fclose(file); // Close the file
		return EXIT_SUCCESS;		
	}
}