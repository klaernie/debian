#!/bin/bash
cd "$(dirname "$0")"
apt-ftparchive packages . | gzip --fast > Packages.gz
apt-ftparchive release . >Release
gpg --armor --sign --detach-sign Release
git add .
git commit -m 'update repository and regenerate Packages.gz'
git push
