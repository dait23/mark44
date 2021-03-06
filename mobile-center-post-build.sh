#!/usr/bin/env bash

HOCKEYAPP_API_TOKEN={API_Token}
HOCKEYAPP_APP_ID={APP_ID}

# Example: Upload master branch app binary to HockeyApp using the API
if [ "$MOBILECENTER_BRANCH" == "master" ];
then
    curl \
    -F "status=2" \
    -F "ipa=@$MOBILECENTER_OUTPUT_DIRECTORY/MyApps.ipa" \
    -H "X-HockeyAppToken: $HOCKEYAPP_API_TOKEN" \
    https://rink.hockeyapp.net/api/2/apps/$HOCKEYAPP_APP_ID/app_versions/upload
else
    echo "Current branch is $MOBILECENTER_BRANCH"
fi
