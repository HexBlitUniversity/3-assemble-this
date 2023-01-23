#!/bin/sh
echo -ne '\033c\033]0;3 - Assemble This\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/lin-breakout.x86_64" "$@"
