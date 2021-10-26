#!/usr/bin/env bash
#find /$APPCENTER_SOURCE_DIRECTORY -type f -name project.assets.json -exec cat -n {} +

echo "upgrading npm i appcenter-cli"
appcenter --version
npm i appcenter-cli@latest
appcenter --version
