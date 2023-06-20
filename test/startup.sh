#!/usr/bin/env bash
# shellcheck disable=SC1091,SC2016

source /usr/lib/snaker/init.bash;

snk_iload "io";
snk_iload_submodule "io" "logging";
snk_iload "module";

snk_io_echo "ECHO: What's up?";
snk_io_printf "PRINTF: This is a test!\n";

snk_module_create "user" "$(cat test/cat/userscript_init.bash)";
snk_load "user";
echo "$HELLO$SPACE$WORLD$EXCLAMATION_MARK"
echo '$HELLO$SPACE$WORLD$EXCLAMATION_MARK'