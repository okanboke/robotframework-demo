*** Settings ***
Library  SeleniumLibrary


*** Keywords ***



*** Test Cases ***
screenrobot
    open browser    https://testautomationpractice.blogspot.com/     edge
    maximize browser window

    capture element screenshot      xpath://*[@id="droppable"]     cup.png  #path alınan bölümün screenshot alır!
    capture page screenshot     website.png

    close browser


*** Variables ***

