#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$MOBILECENTER_BRANCH" != "master" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta" $MOBILECENTER_SOURCE_DIRECTORY/MyApp/Info.plist
fi
