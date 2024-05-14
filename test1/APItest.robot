*** Settings ***
Library       SeleniumLibrary

Library       RequestsLibrary

Library       Collections

Library       JSONLibrary
Library       os
Library       venv/Lib/site-packages/robot/libraries/String.py

*** Variables ***
${base_url}          https://b2b-backend.dev3.addinn-group.com
${loginop}          /api/Mobile_Operator/LoginOperator
${Check_connectivity}     /api/Mobile_Operator/CheckConnectivity
${Close_Shift}          /api/Mobile_Shift/CloseShift
${Open_Shift}        /api/Mobile_Shift/OpenShift    
${ticketconsult}             /api/Mobile_Media/Consult
${ticket_type}    barcode
${ticket_value}   3832299889622311111115
${payment}        /api/Mobile_Media/Pay
${validation_get_all}          /api/Mobile_ValidationArticle/GetAll
${validate}         /api/Mobile_Media/Validate
${production_get_all}     /api/Mobile_ProductionArticle/GetAll
${production}          /api/Mobile_Media/Produce
${device_get_all}      /api/Mobile_DeviceControl/GetAll
${Mobile_DeviceControl_event}    /api/Mobile_DeviceControl/Events
${device}      111
${send_command}     /api/Mobile_DeviceControl/SendCommand
*** Test Cases ***
Post_infologin
#Mobile_Operator/LoginOperator
   ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${body}=  create dictionary  username=AyaZgolli   password=AAAZZZ  uuid=99700  appVersion=B2B
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
Post_Mobile_Operator/CheckConnectivity
#Mobile_Operator/CheckConnectivity
    ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${body}=  create dictionary    uuid=99700    appVersion=B2B
    ${resp}=  Post On session   mysession   ${Check_connectivity}     json=${body}     headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
Put_Mobile_Shift/CloseShift
#Mobile_Shift/CloseShift
   ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${resp}=  Put On session   mysession   ${Close_Shift}      headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
Post_Mobile_Shift/OpenShift
#Mobile_Shift/OpenShift
   ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${body}=  create dictionary     startAmount=120
    ${resp}=  Post On session   mysession   ${Open_Shift}     json=${body}     headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
Get_Mobile_Media_Consult
#ticketType=license_plate&ticketValue
   ${params}=    Create Dictionary    ticketType=${ticket_type}    ticketValue=${ticket_value}
   ${json_response}=  Set Variable  ${response.json()}
   Log To Console    ${json_response}
   ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
   log to console   ${token}
   ${token_l}=  Set Variable  ${token}[0] 
   ${authorization_header}=  Set Variable    Bearer ${token_l}
   Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${response}=    GET On Session     mysession    ${ticketconsult}    ${params}     headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200    # Assurez-vous que la requête a réussi
    ${json}=    Set Variable    ${response.json()}    # Convertir la réponse en JSON
    Log To Console    ${response.content}  
    Log To Console   ${response.status_code}
Get_Mobile_ValidationArticle/GetAll
#Mobile_ValidationArticle/GetAll
   ${json_response}=  Set Variable  ${response.json()}
   Log To Console    ${json_response}
   ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
   log to console   ${token}
   ${token_l}=  Set Variable  ${token}[0] 
   ${authorization_header}=  Set Variable    Bearer ${token_l}
   Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${response}=    GET On Session     mysession    ${validation_get_all}     headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200    # Assurez-vous que la requête a réussi
    ${json}=    Set Variable    ${response.json()}    # Convertir la réponse en JSON
 
    Log To Console    ${response.content}  
    Log To Console   ${response.status_code}
# Post_Mobile_Media/Validate
# #Mobile_Media/Validate
#    ${json_response}=  Set Variable  ${response.json()}
#     Log To Console    ${json_response}
#     ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
#     log to console   ${token}
#     ${token_l}=  Set Variable  ${token}[0] 
#     ${authorization_header}=  Set Variable    Bearer ${token_l}
#     Log To Console     ${authorization_header}
#     ${header}=  Create Dictionary     Authorization=${authorization_header}   
#     ${validationArticleId}=  Set Variable  ${1}
#     ${validationArticleId_int}=  Convert To Integer  ${validationArticleId}
#     ${body}=  create dictionary  ticketType=barcode    ticketValue=3832299889622311111115      validationArticleIds=${validationArticleId_int}
#     ${resp}=  Post On session   mysession    ${validate}        json=${body}      headers=${header}
#      Log To Console    ${resp.content}  
#      Log To Console   ${resp.status_code}

Post_Mobile_Media/Pay
#Mobile_Media/Pay
   ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${body}=  create dictionary  ticketType=barcode            ticketValue=3832299889622311111115
    ${resp}=  Post On session   mysession    ${payment}        json=${body}      headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
Get_Mobile_ProductionArticle
#Mobile_ProductionArticle
   ${json_response}=  Set Variable  ${response.json()}
   Log To Console    ${json_response}
   ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
   log to console   ${token}
   ${token_l}=  Set Variable  ${token}[0] 
   ${authorization_header}=  Set Variable    Bearer ${token_l}
   Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${response}=    GET On Session     mysession    ${production_get_all}     headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200    # Assurez-vous que la requête a réussi
    ${json}=    Set Variable    ${response.json()}    # Convertir la réponse en JSON
    Log To Console    ${response.content}  
    Log To Console   ${response.status_code}
Post/Mobile_Media/Produce
#Mobile_Media/Produce
   ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}   
    ${product_id}=  Set Variable  ${1}
     ${payment_method}=  Set Variable  ${0}
    ${product_id_int}=  Convert To Integer  ${product_id}
    ${payment_method_int}=  Convert To Integer  ${payment_method}

    ${body}=  Create Dictionary  productId=${product_id_int}  paymentMethodId=${payment_method_int}
    ${resp}=  Post On session   mysession     ${production}        json=${body}      headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
Get_Mobile_DeviceControl
#Mobile_DeviceControl
   ${json_response}=  Set Variable  ${response.json()}
   Log To Console    ${json_response}
   ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
   log to console   ${token}
   ${token_l}=  Set Variable  ${token}[0] 
   ${authorization_header}=  Set Variable    Bearer ${token_l}
   Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${response}=    GET On Session     mysession    ${device_get_all}     headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200    # Assurez-vous que la requête a réussi
    ${json}=    Set Variable    ${response.json()}    # Convertir la réponse en JSON
    Log To Console    ${response.content}  
    Log To Console   ${response.status_code}
Get_Mobile_DeviceControl_event
#Mobile_DeviceControl_event
   ${params}=    Create Dictionary    deviceId=${device}    
   ${json_response}=  Set Variable  ${response.json()}
   Log To Console    ${json_response}
   ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
   log to console   ${token}
   ${token_l}=  Set Variable  ${token}[0] 
   ${authorization_header}=  Set Variable    Bearer ${token_l}
   Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${response}=    GET On Session     mysession    ${Mobile_DeviceControl_event}    ${params}     headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200    # Assurez-vous que la requête a réussi
    ${json}=    Set Variable    ${response.json()}    # Convertir la réponse en JSON
    Log To Console    ${response.content}  
    Log To Console   ${response.status_code}
Put_Mobile_Device/Send_command
#Mobile_Device/Send_command
   ${json_response}=  Set Variable  ${response.json()}
    Log To Console    ${json_response}
    ${token}=  Get Value From Json  ${json_response}  $.resultat.userModel.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header}  
    ${body}=  create dictionary  deviceId=111   command=lock  raison=une tempête
    ${resp}=  Put On session   mysession   ${send_command}     json=${body}     headers=${header}
     Log To Console    ${resp.content}  
     Log To Console   ${resp.status_code}
  
