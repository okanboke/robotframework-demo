*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.google.com/
${browser}  Edge

*** Test Cases ***
Test Edge browser
    insideedge

*** Keywords ***
insideedge
    open browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep   10      # 10 saniye bekler.
    Close Browser