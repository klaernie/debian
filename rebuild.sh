#!/bin/bash
cd "$(dirname "$0")"
dpkg-scanpackages -m . | gzip --fast > Packages.gz
git add .
git commit -m 'update repository and regenerate Packages.gz'
git push
