#!/bin/bash

reset
Rscript -e "quarto::quarto_render('.')"
cp -r favicon.png CNAME docs/
cp -r resources/* docs/resources
cp -r packages/* docs/packages
git add docs && git commit -m "docs commit"
git push origin main:main
