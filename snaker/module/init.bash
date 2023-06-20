#!/usr/bin/env bash
# Module Manager

snk_module_touch(){
    mkdir -p "$INCLUDE_PATH/$1";
    touch "$INCLUDE_PATH/$1/init.bash";
}
snk_module_rewrite(){
    snk_module_touch "$1";
    echo -n "$2">"$INCLUDE_PATH/$1/init.bash";
}
snk_module_create(){
    snk_module_touch "$1";
    snk_module_rewrite "$1" "$2";
}