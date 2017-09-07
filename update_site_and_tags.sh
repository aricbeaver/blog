#!/bin/bash
rm -R _site
rm -R tag
jekyll build
cp -R _site/tag/ tag/
jekyll serve