*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
alertwindow
    open browser    https://testautomationpractice.blogspot.com/    Edge
    maximize browser window
    click button    xpath://button[contains(text(),'Confirm Box')]
    sleep   2
    handle alert    accept  # alert!    or  cancel = dismiss

    # verify the text on alert window
    # alert should be present   <text>

    #verify the text is not there in alert window
    # alert should not be present   <text>
    sleep   2
