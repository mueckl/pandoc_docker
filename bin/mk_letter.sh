#!/bin/bash

FILE_MD=${1:?"usage: $0 letter_xy.md"}

if [[ ! "$FILE_MD" =~ [.]md$ ]]; then
    echo "only File with .md - Extensions are supported" 
    exit 1
fi

if [[ ! -e $FILE_MD ]]
then
    echo "File does not exist : $FILE_MD"
    exit 1
fi

FILE_PDF=$(echo $FILE_MD | sed -e "s/[.]md$/.pdf/g")

echo "converting $FILE_MD --> $FILE_PDF"

docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc_dev pandoc  --template=letter.latex -V lang=de-DE $FILE_MD -o $FILE_PDF


