#!/bin/bash
# Use this script to tick a beat.
# Create a file at /etc/tickbeat/xyz with contents like this:
#
# TICKBEAT_URL=http://some.tickbeat.com
# TICKBEAT_BEAT=xyz
# TICKBEAT_TOKEN=secretpassword123
#
# Then call this script like this: tickbeat xyz
#

set -e
. /etc/tickbeat/$1
/usr/bin/curl -n -d "" -s -H "Authorization: Bearer $TICKBEAT_TOKEN" "$TICKBEAT_URL/beats/$TICKBEAT_BEAT/tick" > /dev/null 2>&1



