#!/bin/sh

if [ -z "$URL_EJS" ]; then
    mb --allowInjection
else
    mkdir /imposters
    curl -g -k $URL_EJS > /imposters/imposters.ejs
    mb --allowInjection --configfile /imposters/imposters.ejs 
fi
