#!/bin/bash
cd "$(dirname "$0")"
apt-ftparchive packages . > Packages
gzip -9 <Packages >Packages.gz
apt-ftparchive release . >Release
gpg --armor --sign --detach-sign --output - Release >Release.gpg
git add .
git commit -m 'update repository and regenerate Packages.gz'
git push
