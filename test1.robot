*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}      https://www.google.com
${browser}  firefox

*** Test Cases ***
Google
    Open Browser    ${url}  ${browser}
    Maximize Browser Window


*** Keywords ***
