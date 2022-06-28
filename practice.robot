*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/check-out.html
${browser}  firefox
${mail}     user@mail.com
${user}     user
${text}     hello world !
*** Test Cases ***
Selenium
    constructor
    customerInfo
    destructor

*** Keywords ***
constructor
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    sleep   2
customerInfo
    input text  xpath://*[@id="email"]  ${mail}
    input text  xpath://*[@id="name"]   ${user}
    input text  xpath://*[@id="address"]    ${text}
destructor
    sleep   2
    Close Browser