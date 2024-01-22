#!/usr/bin/sh
#
# Build all stories

OUTPUT_DIRECTORY=public
STORIES_DIRECTORY=stories

mkdir -p $OUTPUT_DIRECTORY
find $OUTPUT_DIRECTORY -type f -exec rm {} +

for STORY_FILENAME in `ls "$STORIES_DIRECTORY"`; do
  STORY_ID=`echo "$STORY_FILENAME" | cut -d. -f1`

  scripts/run_tweego.sh -o "$OUTPUT_DIRECTORY/$STORY_ID.html" \
    "$STORIES_DIRECTORY/$STORY_FILENAME"
done
