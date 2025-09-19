#!/bin/bash
# MP3-Downloader für trekcore.com

BASE_URL="https://www.trekcore.com/audio/"
USER_AGENT="Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
REFERER="$BASE_URL"

wget -r \
  -np \
  -v \
  -A mp3 \
  --user-agent="$USER_AGENT" \
  --referer="$REFERER" \
  --no-check-certificate \
  "$BASE_URL"

echo "Download abgeschlossen."

