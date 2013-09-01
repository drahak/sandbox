set BASE_DIR=%~dp0

cd /d %BASE_DIR%..\
IF NOT EXIST node_modules\protractor (
    ECHO "Install dependencies first"
    EXIT /b 1
)

IF NOT EXIST selenium (
    node ./node_modules/protractor/bin/install_selenium_standalone
)

java -jar selenium/selenium-server-standalone-2.35.0.jar -Dwebdriver.chrome.driver=./selenium/chromedriver.exe