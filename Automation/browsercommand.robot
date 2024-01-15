*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
browsercommands
    open browser    https://www.google.com/     edge
    maximize browser window
    sleep   2
    go to   https://www.yahoo.com/
    sleep   2
    go back
    sleep   2
    close browser


*** Keywords ***

