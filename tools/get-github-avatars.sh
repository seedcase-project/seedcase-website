#!/usr/bin/env bash
# Strict mode for better errors handling and failing.
# e = exit immediately with an error.
# u = treat unset variables as an error.
# o pipefail = make a pipeline fail if anywhere in the pipe something fails.
set -euo pipefail

# Prevent word splitting on spaces.
IFS=$'\n\t'

# This script is used to download the profile pictures (avatars) of our team members,
# to be used on our About page. It saves the images in the "about/images/" directory.

USERNAMES=("lwjohnst86" "k-beicher" "martonvago" "signekb" "joelostblom" "danmazjen")
SAVE_DIR="./about/images"

for USER in "${USERNAMES[@]}"; do
  AVATAR_URL=$(curl -s "https://api.github.com/users/$USER" | jq -r .avatar_url)
  curl -s "$AVATAR_URL" -o "$SAVE_DIR/${USER}.jpg"
  echo "Saved $USER's avatar to $SAVE_DIR/${USER}.jpg"
done
