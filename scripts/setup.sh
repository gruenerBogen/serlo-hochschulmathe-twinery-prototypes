#!/usr/bin/sh
#
# Script to install tweego

set -e

ZIP_FILE="$1"
TARGET_PATH="$2"

if [ -z "$ZIP_FILE" ] || [ -z "$TARGET_PATH" ]; then
  >&2 echo "Error: Arguments ZIP_FILE and TARGET_PATH cannot be empty"
  exit 1
fi

HARLOWE_URL="https://raw.githubusercontent.com/klembot/twinejs/60c3cadc308ec9ceafb0406c5c1ef58eaa828d2e/public/story-formats/"
HARLOWE_VERSION="harlowe-3.3.9"
STORY_DIR="$TARGET_PATH/storyformats"

unzip "$ZIP_FILE" -d "$TARGET_PATH"
chmod +x "$TARGET_PATH/tweego"

mkdir -p "$STORY_DIR/$HARLOWE_VERSION"

wget -O "$STORY_DIR/$HARLOWE_VERSION/format.js" "$HARLOWE_URL/$HARLOWE_VERSION/format.js"
wget -O "$STORY_DIR/$HARLOWE_VERSION/icon.svg" "$HARLOWE_URL/$HARLOWE_VERSION/icon.svg"
