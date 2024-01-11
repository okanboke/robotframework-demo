*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Test Cases ***
widowsclose
    open browser    https://robotframework.org/     Edge
    maximize browser window
    sleep   2
    click link  xpath://a[contains(text(),'AppiumLibrary')]
    switch window   Robot Framework
    sleep   2
    close window
    sleep   2
    close browser


*** Keywords ***

