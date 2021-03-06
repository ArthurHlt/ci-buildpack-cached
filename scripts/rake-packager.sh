#!/bin/sh
set -xe
cd bp-release
mkdir src
tar -xzf source.tar.gz -C src
cd src/*
bundle install
bundle exec rake clean package OFFLINE=true PINNED=true
mv build/*.zip ./
mv *.zip ../../../bp-cached
cp ../../tag ../../../bp-cached
