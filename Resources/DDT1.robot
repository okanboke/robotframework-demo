*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot    #Resource dosyası import
Suite Setup    Opening My Browser        # Suite Setup kodu, bir test süitinin başında yürütülen özel bir kod bloğunu temsil eder.
Suite Teardown    Closing My Browsers
Test Template    Invalid Login

*** Test Cases ***        username               password
right user wrong pwd      admin@yourstore.com    xyz
wrong user right pwd      adm@yourstore.com      admin
right user empty pwd      admin@yourstore.com    ${EMPTY}
empty user right pwd      ${EMPTY}               admin
wrong user wrong pwd      adm@yourstore.com      xyz

    
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Inputing Username    ${username}
    Inputing Password    ${password}
    Click Login Button
    Error Message Should Be Visible