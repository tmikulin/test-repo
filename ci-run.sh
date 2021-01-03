#!/bin/bash

APP_ENV=$PWD/.ci-app-env
if [ -d $APP_ENV ] ; then
  rm -rf $APP_ENV
fi

virtualenv -p python3.7 $APP_ENV
. $APP_ENV/bin/activate

pipenv install -d

pytest -rxXs --verbose tests
