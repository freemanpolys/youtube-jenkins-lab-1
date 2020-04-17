#!/bin/sh

SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
"$SCRIPTPATH/youtube-hello-world" -importPath youtube-hello-world -srcPath "$SCRIPTPATH/src" -runMode dev
