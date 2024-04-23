*** Settings ***
Library    SeleniumLibrary
variables   ${CURDIR}/lacators.py
*** Variables ***
${LOGIN_URL}       https://b2b-frontend.dev3.addinn-group.com/auth/login
${USERNAME}        Admin
${PASSWORD}        Admin123
*** Keywords ***
Access Web Page With Authentication
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
Call Method    ${chrome_options}    add_argument    test-type
Call Method    ${chrome_options}    add_argument    --disable-extensions
Call Method    ${chrome_options}    add_argument    --headless
Call Method    ${chrome_options}    add_argument    --disable-gpu
Call Method    ${chrome_options}    add_argument    --no-sandbox
Create Webdriver    Chrome    chrome_options=${chrome_options}       
    Maximize Browser Window
    sleep      2s 
    Input Text    ${usernamexpath}   ${USERNAME}
    sleep      2s 
    Input Password    ${passwordxpath}   ${PASSWORD}
    sleep      2s 
    Click Element   ${continuebutton}
    sleep      4s 

   

