#!/bin/bash
# this file deploys the website upto: hamzehkhazaei.github.io

if [[ $# -ne 1 ]] ; then
    echo 'please provide a message for commit command.'
    exit 1
fi
hugo
cd ./public
git add .
git commit -m "$@"
git push -u origin master
