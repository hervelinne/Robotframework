*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  firefox
${alert}    xpath:/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[2]/div/aside/div/div[2]/div[1]/button
*** Test Cases ***
alertwindow
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium speed  0.5 seconds
    alertbutton
    Close Browser


*** Keywords ***
alertbutton
    click button    ${alert}
    Alert Should Be Present     Press a button!   # Objecting presence => alert should not be present      Press a button!
    #   handle alert    accept  #or else dismiss

