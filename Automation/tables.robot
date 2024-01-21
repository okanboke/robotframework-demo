*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidation
    Open Browser    https://testautomationpractice.blogspot.com/    edge
    Maximize Browser Window
    ${rows}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${colums}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    
    Log To Console    ${rows}
    Log To Console    ${colums}

    ${data}    Get Text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    
    Log To Console    ${data}     #table'daki verilen index değerlerindeki text'i consola yazdırır
    
    Table Column Should Contain    xpath://table[@name='BookTable']    1    BookName    # Tabloda var olan sutündaki 1 değeri eşit mi kontrolü
    Table Row Should Contain    xpath://table[@name='BookTable']    5    Mukesh        # Tabloda 5. satırdaki değer eşit mi kontrolü
    Table Cell Should Contain    xpath://table[@name='BookTable']    6    2    Amod    # Tabloda 6.satır 2. sütundaki değer eşit mi kontrolü
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName    # Tablo başlığı eşit mi kontrolü
    
    Close Browser
