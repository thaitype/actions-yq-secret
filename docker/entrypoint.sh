#!/bin/sh -l
set -e
CMD=$1
SENSITIVE=$2
echo "::debug::\$cmd: $CMD"
echo "::debug::\$cmd: $SENSITIVE"
RESULT=$(eval "$CMD")
RESULT="${RESULT//'%'/'%25'}"
RESULT="${RESULT//$'\n'/'%0A'}"
RESULT="${RESULT//$'\r'/'%0D'}"
if [ "$SENSITIVE" = "true" ]
then
    echo "::add-mask::$RESULT"
else
    echo "::debug::\$RESULT: $RESULT"
fi
echo "result=$RESULT" >> $GITHUB_OUTPUT
