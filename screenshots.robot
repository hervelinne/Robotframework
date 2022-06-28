*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}      http://www.practiceselenium.com/
${browser}  firefox
${elt}      xpath://img[@src='//nebula.wsimg.com/7cbbd331e278a100b443a12aa4cce77b?AccessKeyId=7ECBEB9592E2269F1812&disposition=0&alloworigin=1']
${name}     cup.png     #if u wanna save it elswhere jst add the path to the name

*** Test Cases ***
screenshot
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    sleep   0.5

    capture element screenshot      ${elt}  ${name}
    capture page screenshot     page.png

    #execute javascript  window.scrollTo(0,2000)
    # or else => scroll element into view   xpath://
    execute javascript     window.scrollTo(0,document.body.scrollHeight)
    capture page screenshot     scroll1.png
    sleep   1
    execute javascript     window.scrollTo(0,-document.body.scrollHeight)
    capture page screenshot     scroll.png

    sleep   1
    Close Browser


*** Keywords ***
