#!/usr/bin/env bash
# shellcheck disable=SC2016

not_makefile(){
    echo '!!!!!!!!!!!!!!!!!
Please run `make` in terminal (in the
main folder) in order to start the program,
don'\''t run files in this folder!
!!!!!!!!!!!!!!!!!'
    exit 1
}
create_user_modules_folder(){
    mkdir -p "${HOME}/.local/share/snaker"
}
runned_as_root(){
    echo '--------------------------------
WARNING: You are running configuration script as root.
Local environment may be harmed.
--------------------------------'
}
runned_as_non_root(){
    :;
}

echo 'Configuring...';
if [ "$IS_MAKEFILE" != 1 ]; then
    not_makefile;
fi
if [ "$EUID" == 0 ]; then
    runned_as_root;
else
    runned_as_non_root;
fi

create_user_modules_folder;
echo 'Configuration finished';