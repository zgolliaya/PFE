
*** Settings ***
Library    SeleniumLibrary
Resource    login.robot
variables  ${CURDIR}/lacators.py
*** Variables ***
${first_name}=  Aya
${last_name}=    Zgolli
${username1}=    AyaZG
${PASSWORDOP1}=     123ZAAA
${REPEATPASSWORDOP1} =    123ZAAA   
${Contract} =  1
${CONSUMER} =  205
${ashierPassword} =     4711
*** Keywords ***
Add Operators
  [Arguments]    ${first_name}    ${last_name}    ${username1}    ${PASSWORDOP1}    ${REPEATPASSWORDOP1}    ${Contract}   ${CONSUMER}    ${ashierPassword}  
  #Operators
  Wait Until Element Is Visible     ${Operatorsbutton}               15s
  Click Element    ${Operatorsbutton}   
  Sleep    1s
  #ADD operators
  Wait Until Element Is Visible   ${ADDoperators}  
  Sleep  1s
  Click Element   ${ADDoperators} 
  Sleep   1s
  #Profile
  Input Text    ${firstnameop}   ${FIRSTNAME}
  Sleep  1s
  Input Text    ${lastnameop}    ${LASTNAME}
  Sleep  1s
  Input Text    ${usernameop}   ${username1}
  Sleep  1s
  Input Password  ${Passwordop}           ${PASSWORDOP1}
  Sleep  1s
  Input Password   ${repeatpassop}        ${REPEATPASSWORDOP1}
  Sleep  1s
  #Carpark & Features
  Wait Until Element Is Visible   ${CarparkFeaturesop}
  Click Element   ${CarparkFeaturesop}
  Sleep  1s
  #CarPark
  Click Element   ${carparkop}
  Sleep  1s
  #CarPark2
  ${carpark_to_select}=     Set Variable    PUMC Carpark  
   Select From List by Label    ${carparkop}    ${carpark_to_select}
  #Select From List by Label    ${carparkop}     PUMC Carpark 
  Sleep  1s
  Click Element   ${carparkop}
  Sleep  1s
  #GRANTED FEATURES
  Click Element        ${GRANTEDFEATURESop}
  Sleep  1s
  Wait Until Element Is Visible     ${ticketinformation} 
  Click Element     ${ticketinformation} 
  Sleep  1s
  #Payment 
  Click Element   ${GRANTEDFEATURESop}
  Sleep  1s
  Click Element    ${payment}
  Sleep  1s
  #Validation
  Click Element   ${GRANTEDFEATURESop}
  Sleep  1s
  Click Element    ${validation}
  Sleep  1s
  #Production
  Click Element  ${GRANTEDFEATURESop}
  Sleep  1s
   Click Element   ${production}
  Sleep  1s
  #Device control
  Click Element    ${GRANTEDFEATURESop}
  Sleep  1s
  Click Element   ${devicecontrol1}
  Sleep  1s
  
  #Payment & Shift 
   Wait Until Element Is Visible      ${PaymentShift}
    Click Element   ${PaymentShift}
  Sleep  1s
  Wait Until Element Is Visible  ${contractop}
   
    Input Text  ${contractop}    ${Contract} 
  Sleep  1s
    Input Text     ${consumer1}   ${CONSUMER}  
  Sleep  1s
  Input Password    ${cashierpasswrd}  ${ashierPassword} 
  Sleep  1s
   Click Element   ${paymentmeth}
  Sleep  1s
  ${payment_select} =    Set Variable    ALL   

   Select From List by Label   ${paymentmeth}     ${payment_select} 
  Sleep  1s
  #Validation & Production
   Click Element  ${validprod}
  Sleep  1s
  #1hour-
   Click Element   ${Validationarticles}
  Sleep  1s
   Click Element    ${HourDiscount}       
  Sleep  1s
    Click Element   ${Validationarticles}
  Sleep  1s
   Click Element    ${EURDiscount}  
  #FREEparking
    Click Element    ${Validationarticles}  
  Sleep  1s 
   Click Element  ${freepark}
  #Sleep  1s
 #Production article "lostticket"
   
 #Prepaid 1day
   Click Element   ${productionarticles}
  Sleep  1s
  Click Element  ${prepaid}
  Sleep  1s
  #FREE Parking 
  #Click Element   //ng-select[contains(@formcontrolname, 'productionArticles')]
  #Click Element   xpath=//div[contains(@class, 'ng-option') and .//span[contains(text(), 'Free parking')]]
  #Sleep  2s 

  #Device Control
   Click Element   ${devicecontrol}
  #checkbox
   #Wait Until Element Is Visible    ${checkbox1}
   #Wait Until Element Is Visible    ${checkbox1}
  Click Element    ${checkbox1}
  
       Click Element    ${checkbox6}
    
    Click Element    ${checkbox10}
  
     Execute JavaScript    window.scrollBy(0, -1000)
        Click Element    ${checkbox22}
    
      Click Element    ${checkbox24}
    
     Click Element    ${checkbox27}
  
  #Save
   ${element}=    Get WebElement      ${saveop}
  Scroll Element Into View    ${element}
  Click Element   ${element}
  #Click Element  ${saveop}
   sleep  1s 
   Wait Until Element Is Visible    ${buttonop}
   Click Element   ${buttonop}
   Sleep  1s

   
