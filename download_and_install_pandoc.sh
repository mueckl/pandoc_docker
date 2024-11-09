#!/bin/bash
set -e
cd /tmp/
curl  -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"  "https://api.github.com/repos/jgm/pandoc/releases" > versions.json
echo "----"
URL=$(cat versions.json | jq -r .[0].assets[].browser_download_url | grep amd64.deb)
echo $URL
echo "----"
curl -L "$URL" > pandoc_latest.deb
dpkg -i pandoc_latest.deb

