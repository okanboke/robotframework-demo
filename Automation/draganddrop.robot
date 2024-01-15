*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
draganddrop
    open browser    https://testautomationpractice.blogspot.com/    edge
    maximize browser window
    execute javascript  window.scrollTo(0,500)

    drag and drop    xpath://div[@id='draggable']   xpath://div[@id='droppable']   #seçme ve sürükleme işlemi
    sleep   2
    close browser