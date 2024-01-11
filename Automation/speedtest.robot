*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
speedtest
    ${speed}    get selenium speed
    log to console  ${speed}
    open browser    https://formsmarts.com/form/yu?mode=h5      Edge
    maximize browser window
    execute javascript  window.scrollTo(0,1200)  # Sayfayı aşağıya kaydırır
    set selenium speed  2 seconds

    input text  name:u_4rx_4598     Okan
    input text  name:u_4rx_4599     Okan

    close browser
    ${speed}    get selenium speed
    log to console  ${speed}

    # close all browsers    # tüm tarayıcılar kapanır!
*** Keywords ***

