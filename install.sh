#!/bin/sh
set -eu

checkout=$(mktemp -d)
trap 'rm -rf -- "$checkout"' EXIT

git clone --quiet --depth 1 https://github.com/homura-ai/homuzen.git "$checkout"
python3 "$checkout/theme/homu-zen-theme" "$@" apply
