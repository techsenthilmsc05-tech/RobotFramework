*** Settings ***
Library    Browser

*** Test Cases ***
Register Link Test
	Open Browser    https://demowebshop.tricentis.com/    chromium
	Click    text=Register
	${register_text}=    Get Text    text=Register
	Should Contain    ${register_text}    Register
	Close Browser
