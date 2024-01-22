#!/usr/bin/sh
#
# Run tweego directly or with flatpak

if command -v tweego; then
  COMMAND="tweego"
else
  COMMAND="flatpak run --filesystem=$PWD/stories:ro --filesystem=$PWD/public:rw com.github.tmedwards.tweego"
fi

$COMMAND "$@"
