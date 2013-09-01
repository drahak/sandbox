@echo off

REM Windows script for running e2e tests

set BASE_DIR=%~dp0
node_modules\.bin\protractor tests\config\e2e.js