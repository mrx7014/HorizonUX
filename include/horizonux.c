#include "horizonux.h"

bool is_boot_completed() {
    char content[3];
    FILE *getprop = popen("getprop sys.boot_completed", "r");
    if(!getprop) {
        return false;
    }
    if (fgets(content, sizeof(content), getprop) == NULL) {
        pclose(getprop);
        return false;
    }
    pclose(getprop);
    content[strcspn(content, "\n")] = '\0';
    return strcmp(content, "1") == 0;
}
