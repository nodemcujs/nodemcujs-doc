#!/bin/sh
rm -rf _book
sh ./build/replace-qiniu.sh
gitbook build
git checkout ./
chmod -R 775 ./*
sh ./build/upload-qiniu.sh
#sh ./build/replace-qiniu.sh
sh ./build/cp-website.sh
