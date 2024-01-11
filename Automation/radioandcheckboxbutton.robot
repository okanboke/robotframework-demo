*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://secure.wufoo.com/gallery/install/template/342//     # radio button form
${url2}     https://formsmarts.com/form/yu?mode=h5   # checkbox button form
${browser}      Edge
*** Test Cases ***
checking radio button
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds    # işlem hızı
    execute javascript  window.scrollTo(0,100)  # Sayfayı aşağıya kaydırır
    select radio button    loginRadio   Yes     # Radio buttonu seç!
    sleep   2
    close browser
checking checkbox
    open browser    ${url2}  ${browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1700)  # Sayfayı aşağıya kaydırır
    select checkbox     u_4rx_4604   # checkbox buttonu seç!
    select checkbox     u_4rx_4603   # checkbox buttonu seç!
    # DropDownMenü Seçimi
    select from list by label   u_4rx_678913    Aksaray
    select from list by index   u_4rx_678913    6
    # select from list by value
    sleep   2
    close browser
*** Keywords ***

