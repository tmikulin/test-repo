#!/bin/bash

APP_ENV=$PWD/ci-jobs/test-repo/.ci-app-env
APP_ENV_TESTS=$PWD/ci-jobs/test-repo/tests
if [ -d $APP_ENV ] ; then
  rm -rf $APP_ENV
fi

virtualenv -p python3.7 $APP_ENV
. $APP_ENV/bin/activate

pipenv install -d

pytest -rxXs --verbose $APP_ENV_TESTS

