*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url1}    https://testautomationpractice.blogspot.com/
${url2}    https://www.google.com/
${browser}    edge

*** Test Cases ***
practiceform
    ${pagetitle}    launchingbrowser    ${url1}    ${browser}
    Log To Console    ${pagetitle} #keywords'de açılan sayfanın başlığı alınır ve konsola yazdırılır
    Log    ${pagetitle} #title log'a yazdırılır.
    Inputingvalues
    Sleep    1
    Close Browser

*** Keywords ***
launchingbrowser
    [Arguments]    ${weburl}    ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}

inputingvalues
   Input Text    xpath://input[@id='name']    Okan
   Input Text    xpath://input[@id='email']    Böke




