*** Settings ***
Library    SeleniumLibrary

# Data Driven
# DDT1'de bu sayfa ile test cases yazılacak

*** Variables ***
${URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    edge   

*** Keywords ***
Opening my browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Closing my browsers
    Close All Browsers
    
Logining into page
    Go To    ${URL}
    
inputing Username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

inputing password
    [Arguments]    ${password}
    Input Text    id:Password    ${password}

click login button
    Click Element    xpath://button[normalize-space()='Log in']

click log out button
    Click Link    Logout

Error message should be visible
    Page Should Contain    Login was unsuccessful.

Dashboard page should page be visible
    Page Should Contain    Dashboard