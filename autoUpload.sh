#!/bin/bash

# File    : autoUpload.sh
# Purpose : Upload example data to github 
# Author  : Cristopher Garduno Luna
# Date Created:      : 03-01-2018
# Date Last Modified : 03-01-2018

# update images folder on git
git add images
git commit -m "updated images"
git push

echo "Updated images folder on git!"
