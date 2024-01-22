#!/usr/bin/sh
#
# Run tweego directly or with flatpak

STORY="$1"
TARGET="$2"

if command -v tweego; then
  COMMAND="tweego"
else
  COMMAND="flatpak run --filesystem=$PWD/$STORY:ro --filesystem=$PWD/$TARGET:rw com.github.tmedwards.tweego"
fi

$COMMAND -o "$TARGET" "$STORY"
