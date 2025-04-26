#!/bin/sh

git checkout deploy
git merge main -m "merge"
git checkout main
git push origin deploy
