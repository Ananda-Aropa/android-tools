#!/bin/bash

MAINTAINER=$(git log -1 --pretty=format:'%an <%ae>')

echo "DEBEMAIL='$(echo "$MAINTAINER" | awk -F '<' '{print $2}' | awk -F '>' '{print $1}')'" >>.env
echo "DEBFULLNAME='$(echo "$MAINTAINER" | awk -F '<' '{print $1}')'" >>.env
