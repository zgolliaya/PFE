*** Settings ***
Library        SeleniumLibrary

Library       RequestsLibrary

Library       Collections

Library      JSONLibrary
Library        os
Library        venv/Lib/site-packages/robot/libraries/String.py

*** Variables ***
${base_url}          https://b2b-backend.dev3.addinn-group.com
${loginop}          /api/Mobile_Operator/LoginOperator
${ticketconsult}   /api/Mobile_DeviceControl/GetAll

*** Test Cases ***
Post_infologin
   ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${body}=  create dictionary  username=AyaZgolli   password=AAAZZZ  uuid=azerflk  appVersion=B2B
   Create Session    mysession  ${base_url}  headers=${header}  verify=${True}
   ${response}=  POST On Session   mysession   ${loginop}   json=${body}    headers=${header}
   log To Console    ${response}
   Log To Console    ${response.content}
   #Validations
   ${status_code}=  convert to string  ${response.status_code}
   Should Be Equal      ${status_code}    200
   ${res_body}=  convert to string  ${response.content}
   should contain   ${res_body}      PUMC Carpark
  Set Global Variable    ${response}
Get_all
    ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${resp}=  Get on session   mysession    ${ticketconsult}         headers=${header}
   Log To Console    ${resp.content}  
   Log To Console   ${resp.status_code}
   
PUT_sendcommande
   ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${body}=  create dictionary   deviceId= 0    command= open   command= close    raison= string
   Create Session    mysession1  ${base_url}  headers=${header}  verify=${True}
   ${response1}=  PUT On Session   mysession1   ${loginop}   json=${body}    headers=${header}
   log To Console    ${response1.status_code}
   Log To Console    ${response1.content}
  