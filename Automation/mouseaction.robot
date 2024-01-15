*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
mouseaction
    open browser    https://testautomationpractice.blogspot.com/    edge
    maximize browser window
    # open context menu   xpath://*[@id="HTML9"]/div[1]/button[1]     #mouse right click!
    sleep   2
    double click element    xpath://button[normalize-space()='Copy Text']   #mouse double left click!
    sleep   2
    close browser

