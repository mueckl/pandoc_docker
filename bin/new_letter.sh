#!/bin/bash

set -e

TARGETFILE=${1:?"Input-File is missing"}

VORLAGE=/Demo/letter/letter.md

if [ -f $TARGETFILE ]
then 
  echo "exists"
  echo ""
  echo "joe $TARGETFILE"
  exit 1
fi

if [ -d $TARGETFILE ]
then
  echo "Ziel ist ein Verzeichnis - Datei benötigt"
  exit 2	
fi

# VARIABLEN in der Vorlage

export HEUTE=$(date +%d.%m.%Y)

# Ersetzung

envsubst <$VORLAGE >$TARGETFILE

echo "Vorlage erstellt: "
echo ""
echo "joe $TARGETFILE"



