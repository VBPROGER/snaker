#!/usr/bin/env bash
# Loader for modules

# shellcheck disable=SC1090

## Snaker Modules
snk_iload(){
    # LOAD:
    # Load a snaker module
    chmod 777 "$SNAKER_PATH/$1/init.bash" 2>/dev/null;
    source "$SNAKER_PATH/$1/init.bash";
}
snk_iload_submodule(){
    # LOAD:
    # Load submodule of snaker module
    chmod 777 "$SNAKER_PATH/$1/$2.bash" 2>/dev/null;
    source "$SNAKER_PATH/$1/$2.bash";
}
snk_iload_fpath(){
    # LOAD:
    # Load submodule of snaker
    # module by full path
    chmod 777 "$SNAKER_PATH/$1/$2" 2>/dev/null;
    source "$SNAKER_PATH/$1/$2";
}
## User Modules
snk_load(){
    # LOAD:
    # Loads user module by name
    chmod 777 "$INCLUDE_PATH/$1/init.bash" 2>/dev/null;
    source "$INCLUDE_PATH/$1/init.bash";
}