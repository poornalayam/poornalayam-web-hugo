#!/bin/bash

# Deploy public/ folder to GitHub Pages by committing it to poornalayam.github.io
# This script is run automatically by GitLab CI pipeline, see .gitlab-ci.yml
# NOTE: GITHUB_PERSONAL_ACCESS_TOKEN is passed in via GitLab CI environment secret variable

GHUSER="poornalayam"
GHREPO="poornalayam.github.io.git"

cd public

git add .

git commit -m 'rebuilding site `date`'
git push https://${GHUSER}:${GITHUB_PERSONAL_ACCESS_TOKEN}@github.com/${GHUSER}/${GHREPO}