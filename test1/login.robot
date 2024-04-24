*** Settings ***
Library    SeleniumLibrary
Variables   ${CURDIR}/lacators.py
*** Variables ***
${LOGIN_URL}       https://b2b-frontend.dev3.addinn-group.com/auth/login
${USERNAME}        Admin
${PASSWORD}        Admin123
*** Keywords ***
Access Web Page With Authentication
   ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method  ${options}  add_argument  --no-sandbox
    Call Method  ${options}  add_argument  --headless
    Open Browser    ${LOGIN_URL}       Chrome     options=${options}  

    Maximize Browser Window
    sleep      2s 
    Input Text    ${usernamexpath}   ${USERNAME}
    sleep      2s 
    Input Password    ${passwordxpath}   ${PASSWORD}
    sleep      2s 
    Click Element   ${continuebutton}
    sleep      4s 

   

