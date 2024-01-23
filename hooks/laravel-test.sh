#!/usr/bin/env bash

system_command="artisan"
sail_command="vendor/bin/sail"

exec_command=""

if [ -f "$sail_command" ]; then
    exec_command="${sail_command} ${system_command}"
else
    exec_command="php ${system_command}"
fi

if [ ! -f "$system_command" ]; then
    echo -e "\033[0;31mArtisan is not found\033[0m"
    echo "Is this a Laravel project?"
    exit 1
fi

${exec_command} test "${@}"
