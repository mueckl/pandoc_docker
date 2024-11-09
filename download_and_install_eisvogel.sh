#!/bin/bash
set -e
cd /tmp/
curl  -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"  "https://api.github.com/repos/Wandmalfarbe/pandoc-latex-template/releases" > versions.json
echo "----"
URL=$(cat versions.json | jq -r .[0].assets[].browser_download_url | grep Eisvogel.tar.gz)
echo $URL
echo "----"
curl -L "$URL" > Eisvogel.tar.gz
tar -xzf Eisvogel.tar.gz
mv eisvogel.latex /home/ubuntu/.local/share/pandoc/templates/eisvogel.latex

