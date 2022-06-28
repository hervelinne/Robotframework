*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}     https://www.google.com
${url2}     https://stackoverflow.com
${browser}  firefox

*** Test Cases ***
browsercommands
    Open Browser    ${url1}   ${browser}
    Maximize Browser Window
    sleep   2

    Go To      ${url2}
    sleep   2

    Go Back
    sleep   2

    Close Browser


*** Keywords ***
