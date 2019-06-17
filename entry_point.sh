#!/bin/sh

if [ -z "$URL_EJS" ]; then
    mb
else
    mkdir /imposters
    curl -g -k $URL_EJS > /imposters/imposters.ejs
    mb --configfile /imposters/imposters.ejs 
fi