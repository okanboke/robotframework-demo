*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      Edge

*** Test Cases ***
ValidationTest
    open browser   ${url}   ${browser}
    #wait until page contains    ${url}
    maximize browser window
    click Image     xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img
    sleep   5
    title should be     nopCommerce demo store    # Başlık doğrulama
    ${input_txt}    set variable    xpath://*[@id="small-searchterms"]
    element should be enabled   ${input_txt}
    element should be visible   ${input_txt}
    sleep   3
    input text  xpath://*[@id="small-searchterms"]     okanbokee@gmail.com      # text siler
    sleep   3
    clear element text  xpath://*[@id="small-searchterms"]  # eklenen text siler
    sleep   3
    close browser
*** Keywords ***

