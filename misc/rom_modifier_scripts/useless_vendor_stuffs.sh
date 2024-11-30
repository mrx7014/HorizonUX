function main() {
	mkdir -p ./build/vendor/etc/init/
    local i
    local IFS
    local start_added=false

    while IFS= read -r i; do
        if echo "$i" | grep -q "mfgloader"; then
            if ! $start_added; then
                start_added=true
                initialize_macloader
            fi
            # Stop processing after initializing
            break
        fi

        # If we haven't added the "start" line yet, copy the lines before it
        if ! $start_added; then
            echo "$i" >> ./build/vendor/etc/init/wifi.rc
        fi
    done < "$(absolute_path --vendor)/etc/init/wifi.rc"
		
    # nothing frfr
    nuke_stuffs
	echo -e "\n [ • Finished removing stuffs from wifi.rc file, checkout patched_resources/vendor/etc/init/ folder"
	echo -e "   • and yeah besure to copy that into your actual vendor/etc/init folder and try if it works or not! ]\n"
}

main