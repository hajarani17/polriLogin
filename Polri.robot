*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
Set Environment Variable    webdriver.gecko.driver  geckodriver.exe
*** Variables ***
#Your Browser
${Browser}      Chrome
#Testing URL 
${SiteUrl}      https://pub-eish-dev.keponet.com/
#Login Data 
${Email}        jenareishsatu@yopmail.com
${Password}     12345678
#Time Delay
${Delay}        5s
*** Keywords ***
#Feel free for add any Keywords here
Open page
    open browser    ${SiteUrl}      ${browser}
    Maximize Browser Window
Find login button
    Click Element   //button[@type="submit"]
Fill login Form
    Input Text          //input[@id="email"]                ${Email}
    Input Text          //input[@id="password"]             ${Password}
Click login button
    Click Element       //button[@type="submit"]
    # Click Element name:login

*** Test Cases ***
#Focus in Test case 
Instagram Login Flow 
    Open Page   
    Find login button
    Fill Login Form  
    Click login button