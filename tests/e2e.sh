#!/bin/bash

BASE_DIR=`dirname $0`

$BASE_DIR/../node_modules/.bin/protractor $BASE_DIR/config/e2e.js