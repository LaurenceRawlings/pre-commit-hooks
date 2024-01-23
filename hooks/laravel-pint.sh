#!/usr/bin/env bash

system_command="pint"
sail_command="vendor/bin/sail"
vendor_command="vendor/bin/${system_command}"

exec_command=""

if [ -f "$sail_command" ]; then
    exec_command="${sail_command} ${system_command}"
elif [ -f "$vendor_command" ]; then
    exec_command=$vendor_command
elif [ -f "$system_command" ]; then
    exec_command=$system_command
else
    echo -e "\033[0;31mLaravel Pint is not found\033[0m"
    echo "Checked paths: ${sail_command}, ${vendor_command}, ${system_command}"
    exit 1
fi

${exec_command} "${@}"
