#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#define PRINT_DEBUG_MESSAGES true
#define BUFFER_SIZE 1024

// include these from the lib file
void ___get__system__property(const char *property, bool asInt);
void ___execute__command(const char *command, bool *ignore_child_processes);
void ___check__root__privileges();
void ___make__OpenRecoveryScript();
void ___reboot__device(const char *state);
void ___disable__magisk__module();
// include these from the lib file

int main() {
	___check__root__privileges();
    int ANDROID_RESCUE_PARTY_TRIGGER_COUNTS = ___get__system__property("sys.rescue_boot_count", "true");
    int APP_PROCESS_CRASH_COUNTS = ___get__system__property("sys.system_server.start_count", "true");
    char IS_DEVICE_SETUP_IS_FINISHED[BUFFER_SIZE];
    strcpy(IS_DEVICE_SETUP_IS_FINISHED, ___get__system__property("persist.sys.setupwizard", "false"));

	// nothing.
    const char *SystemShellCommandsToCompressTheLogs[] = {
        "logcat -d >> /data/media/0/PulseUX/last_boot_attempt_logs.log",
        "cat /dev/kmsg >> /data/media/0/PulseUX/last_booted_system_kmsg_logs.log",
        "tar -cf /data/media/0/PulseUX/dropbox.tar '/data/system/dropbox'",
        "tar -cf /data/media/0/PulseUX/tombstones.tar '/data/tombstones'",
        "tar -cf /data/media/0/PulseUX/data_log.tar '/data/log'",
        "mkdir -p /data/media/0/PulseUX/.last_bootloop_logs",
        "tar -cf '/data/media/0/PulseUX/.last_bootloop_logs/$(date +\"%Y-%m-%d\")/@$(date +\"%I:%M%p\")_bootloop_logger.tar' '/data/media/0/PulseUX/dropbox.tar /data/media/0/PulseUX/tombstones.tar /data/media/0/PulseUX/data_log.tar /data/media/0/PulseUX/last_booted_system_kmsg_logs.log /data/media/0/PulseUX/last_boot_attempt_logs.log'"
    };
	
    if (strcmp(IS_DEVICE_SETUP_IS_FINISHED, "FINISH") == 0) {
		if (APP_PROCESS_CRASH_COUNTS > 2 || ANDROID_RESCUE_PARTY_TRIGGER_COUNTS > 2) {
			for (int i = 0; i < sizeof(SystemShellCommandsToCompressTheLogs) / sizeof(SystemShellCommandsToCompressTheLogs[0]); i++) {
				___execute__command(SystemShellCommandsToCompressTheLogs[i], "false");
			}
			// let's disable magisk modules;
			___disable__magisk__module();
			___make__OpenRecoveryScript(); // let's make a OpenRecoveryMode config file and reboot the device;
			___reboot__device("recovery");
		}
	}
	else { // if the device is not provisioned.
		___make__OpenRecoveryScript();
		___reboot__device("recovery");
	}
    return 0;
}