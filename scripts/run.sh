#!/usr/bin/sh
#
# Run tweego directly or with flatpak

NAME="$1"
STORY="$2"
TARGET="$3"

if command -v tweego; then
  COMMAND="tweego"
else
  COMMAND="flatpak run --filesystem=$PWD/$STORY:ro --filesystem=$PWD/$TARGET:rw $NAME"
fi

$COMMAND -o "$TARGET" "$STORY"
