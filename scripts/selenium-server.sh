#!/bin/bash

BASE_DIR=`dirname $0`

cd $BASE_DIR/../

if [ ! -d "node_modules/protractor" ]; then
    echo Install dependencies first
    exit 1
fi

if [ ! -d "selenium" ]; then
    node ./node_modules/protractor/bin/install_selenium_standalone
fi

java -jar selenium/selenium-server-standalone-2.35.0.jar -Dwebdriver.chrome.driver=./selenium/chromedriver