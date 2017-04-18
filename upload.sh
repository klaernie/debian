#!/bin/bash
cd "$(dirname "$0")"
git add .
git commit -m 'update repository'
git push
