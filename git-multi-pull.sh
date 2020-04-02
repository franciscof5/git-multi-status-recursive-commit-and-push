#!/bin/bash
find . -maxdepth 5 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
