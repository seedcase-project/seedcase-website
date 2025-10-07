#!/bin/sh

# This script is used to download the profile pictures (avatars) of our team members,
# to be used on our About page. It saves the images in the "about/images/" directory.

USERNAMES=("lwjohnst86" "k-beicher" "martonvago" "signekb" "joelostblom")
SAVE_DIR="./about/images"

for USER in "${USERNAMES[@]}"; do
  AVATAR_URL=$(curl -s "https://api.github.com/users/$USER" | jq -r .avatar_url)
  curl -s "$AVATAR_URL" -o "$SAVE_DIR/${USER}.jpg"
  echo "Saved $USER's avatar to $SAVE_DIR/${USER}.jpg"
done
