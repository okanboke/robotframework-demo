*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.google.com/
${browser}      Edge

*** Test Cases ***
InputBox
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   2
    input text  xpath://textarea[@id='APjFqb']      Amazon
    click button    xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[1]
    clear element text  xpath://textarea[@id='APjFqb']
    sleep   2
    input text  xpath://textarea[@id='APjFqb']      Okan
    click button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
    sleep   5

*** Keywords ***

