#!/usr/bin/env bash

set -eu

version=$1

if [ $(git tag -l "${version}") ]; then
  git push --delete origin "${version}"
  git tag --delete "${version}"
fi

git tag "${version}"
git push origin "${version}"