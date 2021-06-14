#!/bin/bash
rm -R _site || echo "_site does not exist"
rm -R tag || echo "tag does not exist"
jekyll build
cp -R _site/tag/ tag/
jekyll serve