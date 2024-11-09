rm -rf ./error_ring.log
if [[ ! -f "./misc/build_scripts/util_functions.sh" ]]; then
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find functions wrapper script, please try again later...\e[0;37m"
  sleep 0.5
  exit 1
else 
  source ./misc/build_scripts/util_functions.sh
fi

if [[ ! -f "./misc/build_scripts/makeconfigs.prop" ]]; then
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find makeconfigs file, please try again later...\e[0;37m"
  sleep 0.5
  exit 1
else 
  source ./misc/build_scripts/makeconfigs.prop
fi

. ./misc/build_scripts/setup.sh 2>./error_ring.log