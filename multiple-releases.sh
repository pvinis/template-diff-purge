#!/usr/bin/env bash
set -euxo pipefail


# this list is used to run the script multiple times, for all the following releases.
# you can replace this list with your own.
releases=(
0.58.3
0.58.4
0.58.5
0.58.6
0.59.0
0.59.0-rc.0
0.59.0-rc.1
0.59.0-rc.2
0.59.0-rc.3
0.59.1
0.59.2
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done
