*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  firefox
${input_text}   xpath:/html/body/div[4]/div[2]/form/div[1]/div[1]/div[2]/div/div[2]/input


*** Test Cases ***
Google
    insideGoogle

*** Keywords ***
insideGoogle
    ${speed}    get Selenium Speed
    log to console  ${speed}

    Open Browser    ${url}  ${browser}
    Maximize Browser window
    set selenium timeout    10 seconds
    wait until page contains    Google  # Normal timeout is 5 sec
    set selenium speed  0.5 seconds     # 0 is normal one
    input text  xpath://input[@type='text']  eclipse
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[2]/center/input[1]
    clear element text  ${input_text}

    ${wait}     get selenium implicit wait
    log to console  ${wait}         # 0 is the default one

    set selenium implicit wait  3 seconds
    input text  ${input_text}   robotframework
    click button    xpath:/html/body/div[4]/div[2]/form/div[1]/div[1]/div[2]/button
    sleep   1
    click element     xpath://a[@href='https://robotframework.org/']//h3[@class='LC20lb DKV0Md'][contains(text(),'Robot Framework')]
    click link      xpath://a[contains(text(),'AppiumLibrary')]
    sleep   1
    switch window   Robot Framework
    sleep   2
    Close window
    sleep   1
    close browser
