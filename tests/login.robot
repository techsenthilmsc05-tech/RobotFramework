*** Settings ***
Library    Browser

*** Test Cases ***
Login Test
    Open Browser    https://google.com/    chromium
    Get Title
    Close Browser
    