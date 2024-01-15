*** Settings ***
Library     SeleniumLibrary



*** Test Cases ***
scrolltest
    open browser    https://en.wikipedia.org/wiki/Main_Page     edge
    maximize browser window
    sleep   2

    # execute javascript  window.scrollTo(0,1500)     #Sayfayı kaydırma işlemi gerçekleştirir!
    # scroll element into view    xpath://*[@id="mp-tfp"]/table/tbody/tr[1]/td/span/a/img     #belirlenen element'e sayfayı kaydırır
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   #Sayfa yüksekliği kadar kaydırma işlemi gerçekleştirir
    sleep   1
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)   #Sayfa yüksekliği kadar negatif kaydırma işlemi gerçekleştirir
