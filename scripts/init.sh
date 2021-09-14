#!/bin/bash

if [ "$ENV_GROUP" == "dev" ] 
then
    echo "Development env"
    cd /usr/src/app/development/
    cp -R . /usr/share/nginx/html/
elif [ "$ENV_GROUP" == "staging" ] 
then
    echo "Staging environment"
    cd /usr/src/app/staging/
    cp -R . /usr/share/nginx/html/
elif [ "$ENV_GROUP" == "prod" ] 
then
    echo "Production environment"
    cd /usr/src/app/production/
    cp -R . /usr/share/nginx/html/
fi
