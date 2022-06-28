*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}     https://google.com
${url2}     https://stackoverflow.com
${browser}      firefox

*** Test Cases ***
google
    Open Browser    ${url1}     ${browser}
    Maximize Browser Window
    sleep   2

stackoverflow
    Open Browser     ${url2}     ${browser}
    Maximize Browser Window
    sleep   2

    Close Browser       # Close the latest browser

StackoverflowTheReturn:p
    Open Browser     ${url2}     ${browser}
    Maximize Browser Window
    sleep   2

    close all browsers


*** Keywords ***


