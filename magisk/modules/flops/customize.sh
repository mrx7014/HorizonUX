# shellcheck disable=SC2148
# shellcheck disable=SC2034

# ok
REPLACE=""
AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# ok
print_modname() {
	echo -e "######################################################################"
	echo -e "   _  _     _   _            _                ____            _       "
	echo -e " _| || |_  | | | | ___  _ __(_)_______  _ __ |  _ \\ __ _ _ __| |_ ___ "
	echo -e "|_  ..  _| | |_| |/ _ \\|  __| |_  / _ \\|  _ \\| |_) / _  |  __| __/ __|"
	echo -e "|_      _| |  _  | (_) | |  | |/ / (_) | | | |  __/ (_| | |  | |_|__ \\"
	echo -e "  |_||_|   |_| |_|\\___/|_|  |_/___\\___/|_| |_|_|   \\__,_|_|   \\__|___/"
	echo -e "                                                                      "
	echo -e "######################################################################"
}

# ok
set_permissions() {
	set_perm_recursive  $MODPATH  0  0  0755  0644
}
