*** Settings ***
Library    Browser
Test Teardown    Capture Screenshot On Failure

*** Variables ***
${SCREENSHOT_PATH}    C:/Users/kumar/OneDrive/Desktop/PlaywrightRobot/tests/browser/screenshot/register_failure.png
${TIMEOUT}    10s

*** Test Cases ***
Register Link Test
	Open Browser    https://demowebshop.tricentis.com/    chromium
	Wait For Elements State    css=a.ico-register    visible    ${TIMEOUT}
	Click    css=a.ico-register
	Wait For Elements State    css=h1    visible    ${TIMEOUT}
	${register_text}=    Get Text    css=h1
	Should Contain    ${register_text}    Register

*** Keywords ***
Capture Screenshot On Failure
	Run Keyword If Test Failed    Run Keyword And Ignore Error    Take Screenshot    ${SCREENSHOT_PATH}
	Close Browser
