#!/usr/bin/env bash
# Logging for Snaker
snk_log(){
  # Prints something to console.
  # Argument 1 is message.
  # Argument 2 is log level.
  local MESSAGE=$1
  local LOGLEVEL=$2
  [ -z "$2" ] && LOGLEVEL="DEBUG"
  echo "[SNK-$LOGLEVEL] $MESSAGE"
}
