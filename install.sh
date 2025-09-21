#!/bin/bash

if [ -e ~/lldb_breakpoint_hook.py ]; then
    read -r -p "Already installed. Install anyway? y/N: " response
    if [[ "$response" != "y" && "$response" != "Y" && "$response" != "yes" && "$response" != "Yes" ]]; then
        echo "Aborting installation"
        exit 1
    fi
fi

if [ -e ~/.lldbinit ]; then
    printf "\e[0;31mWARNING:\e[0m .lldbinit already exists. Overwrite? y/N: "
    read -r response
    if [[ "$response" != "y" && "$response" != "Y" && "$response" != "yes" && "$response" != "Yes" ]]; then
        echo "Aborting installation"
        exit 1
    fi
fi

cp lldb_breakpoint_hook.py ~/lldb_breakpoint_hook.py
cp .lldbinit ~/.lldbinit

echo "Installed successfully"