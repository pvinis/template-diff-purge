#!/usr/bin/env bash
set -euxo pipefail

IFS=$'\n' GLOBIGNORE='*' command eval 'releases=($(cat RELEASES))'


# this script is used to generate multiple diffs
for vfrom in "${releases[@]}"
do
  echo "from $vfrom"
  for vto in "${releases[@]}"
  do
    git diff --binary origin/release/"$vfrom"..origin/release/"$vto" > wt-diffs/diffs/"$vfrom".."$vto".diff
  done
done
