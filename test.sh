#!/usr/bin/env bash

# go to project directory
cd "$(dirname $0)/"

# download firefox 97.0 for MacOS.
#curl https://ftp.mozilla.org/pub/firefox/releases/97.0/mac/en-US/Firefox%2097.0.dmg --output ./firefox.dmg

# convert DMG so that we can get access to the Firefox binary directly, for CLI arguments.
#./convert_dmg.sh ./firefox.dmg ./firefox.zip

# Unzip the firefox archive.
# unzip -d ./firefox-extracted firefox.zip

echo "IMPORTANT: THIS TEST WILL DELETE \$HOME/Library/Application Support/Firefox"
echo "This is important to simulate the issue where this folder does not exist yet"
echo "and cannot be created by the sandbox."

read -p "Press enter to proceed"

rm -Rf "$HOME/Library/Application Support/Firefox"
rm -Rf ./tmp-profile-dir

# Run the sandboxed Firefox spawn.
sandbox-exec -f ./sandbox_profile ./firefox_spawn.sh
