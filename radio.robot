*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  firefox

*** Test Cases ***
practice
    constructor
    textArea
    radio
    checkbox
    selection
    list
    validation
    destructor

*** Keywords ***
constructor
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    sleep   1
textArea
    input text  name:firstname     first name
    sleep   1
    input text  xpath:/html/body/div/div/div[1]/div/div[11]/div/form/fieldset/div[1]/p[3]/input     last name
    sleep   1
    input text     xpath://*[@id="datepicker"]     10-10-10
    sleep   1
radio
    select radio button     sex     Female
    sleep   1
    select radio button    exp     2
checkbox
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea

    select checkbox     tool
selection
    select from list by label   continents  Asia
    sleep   1
    select from list by index   continents  3
    sleep   1
list
    select from list by label   selenium_commands   Wait Commands
    sleep   1
    select from list by index   selenium_commands   4
    sleep   1
validation
    click button    xpath://*[@id="submit"]
destructor
    sleep   2
    Close Browser

