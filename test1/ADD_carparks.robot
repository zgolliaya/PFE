*** Settings ***
Library    SeleniumLibrary
Resource    login.robot
variables     ${CURDIR}/lacators.py
*** Variables ***
${Carpark Name}         Qpark
${Operator ID}          5674
${ZR ID}                  30
${Password}             az12*-
${IP ADDRESS }          192.168.23.4 
${Port}              80
${Cashier Consumer ID }            7685
${Cashier Contract ID }           4599
*** Keywords ***
Add carparks 
 #carparks
  click Element        ${carparksbut}
  Sleep  1s
  Wait Until Element Is Visible       ${ADDcarpaksbutt}
  Sleep  1s
  click Element        ${ADDcarpaksbutt}
  Sleep  1s
  #CarparkName
  Input Text     ${carpakname}           ${Carpark Name}
  Sleep   1s 
  #operatorID
  Input Text   ${operatorsid}         ${Operator ID}
  Sleep  1s 
  #ZRID
  Input Text  ${ZRsid}            ${ZR ID}     
  Sleep  1s
  #protocol                              
  Select From List By Label   ${protocol}       HTTP
  Sleep  1s
  #ipadress
  Input Text    ${ipadresscrap}        ${IP ADDRESS } 
  Sleep  1s
  #port
  Input Text    ${portcarp}        ${Port} 
  Sleep  1s
  #CashierConsumer
   Input Text   ${cashiercontract}    ${Cashier Contract ID } 
   Sleep  1s
   #CashierContract
   Input Text    ${casierconsumer}     ${Cashier Consumer ID } 
   Sleep  1s 
   #Password
   Input Password    ${passwordcarpark}     ${Password} 
   Sleep  1s
   #lpr 
   Select From List By Label    ${lpr}        ON
   Sleep  1s
   #lfk
   Select From List By Label   ${lfk}       ON
   Sleep  1s
   #currency
   #Click Element    ${curency}
   #Sleep  1s
    #Wait Until Element Is Visible  xpath=//div[contains(@class, 'ng-option ng-star-inserted')][1]

   #Click Element    xpath=//div[contains(@class, 'ng-option ng-star-inserted')][1]

   #Sleep  1s
      ${element}=    Get WebElement      xpath=//span[contains(text(), 'Payment & Production')]
     #Scroll Element Into View    ${element}
     #Click Element   ${element}   
     Mouse Over    ${element} 
     Click Element   ${element}
   #Payement&Production 
    #Wait Until Element Is Visible  xpath=//span[contains(text(), 'Payment & Production')]        10s
   #Click Element    xpath=//span[contains(text(), 'Payment & Production')]
   Sleep  1s
   Input text  xpath=//input[@formcontrolname='paymentDeviceId']     200
   Sleep  1s
   Input text  xpath=//input[@formcontrolname='veS_API_Key']           azertyhjutytres1810 
   Sleep  1s
   Input text  xpath=//input[@formcontrolname='epanPrefix']            qsdCC1810 
   Sleep  1s
   Click Element    xpath=//button[contains(text(), 'Save')] 
   Sleep  1s 
   click element       xpath=//button[contains(@class, 'swal2-confirm') and contains(@class, 'btn') and contains(@class, 'btn-success') and contains(text(), 'Ok, got it!')]



