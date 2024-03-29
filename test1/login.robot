*** Settings ***
Library    SeleniumLibrary
variables  D:/PFE/test1/lacators.py
*** Variables ***
${LOGIN_URL}       https://b2b-frontend.dev3.addinn-group.com/auth/login
${USERNAME}        Admin
${PASSWORD}        Admin123
*** Keywords ***
Access Web Page With Authentication
    Open Browser    ${LOGIN_URL}       Chrome       
    Maximize Browser Window
    sleep      2s 
    Input Text    ${usernamexpath}   ${USERNAME}
    sleep      2s 
    Input Password    ${passwordxpath}   ${PASSWORD}
    sleep      2s 
    Click Element   ${continuebutton}
    sleep      4s 

   

