#!/bin/sh

rm -rf publish/*
hugo
cd publish
git add .
git commit -m "rebuilding site `date`"
git push
