#!/usr/bin/env bash

cd "$(dirname $0)/"

# create tmp profile dir
mkdir ./tmp-profile-dir

# run firefox with custom profil directory
./firefox-extracted/Firefox.app/Contents/MacOS/firefox --profile=./tmp-profile-dir --no-remote --new-instance
