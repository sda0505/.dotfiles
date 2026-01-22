#!/usr/bin/env bash
set -e

PROFILE_ID="49be7ee4-e04c-42f9-ac7f-14a14b1f41d5"
BASE_PATH="/org/gnome/terminal/legacy/profiles:"

echo "GNOME Terminal profile with $PROFILE_ID being applied."

dconf load "$BASE_PATH/:$PROFILE_ID/" < "$(dirname "$0")/profile.dconf"

echo "Done. Restart terminal."

