#!/usr/bin/env bash
# Logging for Snaker
snk_log(){
  # Prints something to console.
  # Argument 1 is message.
  # Argument 2 is log level.
  local MESSAGE
  local LOGLEVEL
  MESSAGE=$1
  if [ -z "${2}" ]; then
    LOGLEVEL="DEBUG"
  else
    LOGLEVEL=$2
  fi
  echo "[SNK-$LOGLEVEL] $MESSAGE"
}
