*** Settings ***
Library    SeleniumLibrary
Resource    login.robot
variables  D:/PFE/test1/lacators.py
*** Keywords ***
Add Operators
  [Arguments]    ${first_name}    ${last_name}    ${username}    ${password}    ${repeat_password}    ${Contract}   ${CONSUMER}    ${ashierPassword}  
  #Operators
  Wait Until Element Is Visible     ${Operatorsbutton}           
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
  Input Text    ${usernameop}   ${USERNAME}
  Sleep  1s
  Input Password  ${Passwordop}   ${PASSWORD}
  Sleep  1s
  Input Password   ${repeatpassop}  ${REPEATPASSWORD}
  Sleep  1s
  #Carpark & Features
  Wait Until Element Is Visible   ${CarparkFeaturesop}
  Click Element   ${CarparkFeaturesop}
  Sleep  1s
  #CarPark
  Click Element   ${carparkop}
  Sleep  1s
  #CarPark2
  ${carpark_to_select}=    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania']    Set Variable    PUMC Carpark    ELSE    Set Variable    Qpark
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
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']     Click Element    ${payment}
  Sleep  1s
  #Validation
  Click Element   ${GRANTEDFEATURESop}
  Sleep  1s
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania']    Click Element    ${validation}
  Sleep  1s
  #Production
  Click Element  ${GRANTEDFEATURESop}
  Sleep  1s
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha']      Click Element   ${production}
  Sleep  1s
  #Device control
  Click Element    ${GRANTEDFEATURESop}
  Sleep  1s
  Click Element   ${devicecontrol1}
  Sleep  1s
  
  #Payment & Shift 
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Wait Until Element Is Visible      ${PaymentShift}
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']   Click Element   ${PaymentShift}
  Sleep  1s
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']   Wait Until Element Is Visible  ${contractop}
   
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Input Text  ${contractop}    ${Contract} 
  Sleep  1s
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Input Text     ${consumer1}   ${CONSUMER}  
  Sleep  1s
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Input Password    ${cashierpasswrd}  ${ashierPassword} 
  Sleep  1s
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Click Element   ${paymentmeth}
  Sleep  1s
  ${payment_select} =   Run Keyword If    '${FIRST_NAME}' in ['Ahmed','Rania']    Set Variable    ALL   
  ...                     ELSE IF       '${FIRST_NAME}' in ['Fatima','mahmoud']   Set Variable    Cash
  ...                     ELSE       Set Variable    Credit Card
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha','Omar']  Select From List by Label   ${paymentmeth}     ${payment_select} 
  Sleep  1s
  #Validation & Production
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha']   Click Element  ${validprod}
  Sleep  1s
  #1hour-
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha']  Click Element   ${Validationarticles}
  Sleep  1s
  Run Keyword If    '${FIRST_NAME}' in ['Ahmed','Rania']   Click Element    ${HourDiscount}       
  Sleep  1s
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed']  Click Element   ${Validationarticles}
  Sleep  1s
  Run Keyword If    '${FIRST_NAME}' in['Fatima','mahmoud']   Click Element    ${EURDiscount}  
  #FREEparking
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed', 'mahmoud', 'Rania']    Click Element    ${Validationarticles}  
  Sleep  1s 
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania']  Click Element  ${freepark}
  #Sleep  1s
 #Production article "lostticket"
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania']   Click Element    ${productionarticles}
  Sleep  1s
  Run Keyword If    '${FIRST_NAME}' in ['Fatima','mahmoud' ,'Rania','Aisha']  Click Element  ${lostticket}
  Sleep  1s
 #Prepaid 1day
  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania']   Click Element   ${productionarticles}
  #Sleep  1s
  Run keyword If     '${FIRST_NAME}' in ['Aisha']     Click Element      ${Validationarticles} 
   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed' ,'mahmoud' ,'Rania','Mohamed','Aisha']   Click Element  ${prepaid}
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
   Run Keywords
    ...    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Set Variable    True
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']   Click Element    ${checkbox1}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']   Sleep    1s
    ...    AND  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Click Element    ${checkbox6}
    ...    AND  Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']       Sleep    1s
    ...    AND      Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']   Click Element    ${checkbox10}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']  Sleep    1s
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']     Click Element    ${checkbox18}
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']     Sleep    1s
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']     Click Element    ${checkbox21}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']   Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Execute JavaScript    window.scrollBy(0, -1000)
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Click Element    ${checkbox22}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Click Element    ${checkbox24}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Click Element    ${checkbox26}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']    Click Element    ${checkbox27}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Fatima', 'Ahmed']   Sleep    1s
   
    ...     AND    Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Set Variable    True
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Click Element    ${checkbox2}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in['mahmoud', 'Rania']    Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in['mahmoud', 'Rania']   Click Element    ${checkbox3}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']   Click Element    ${checkbox5}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in['mahmoud', 'Rania']   Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in['mahmoud', 'Rania']   Click Element    ${checkbox6}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']     Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Click Element    ${checkbox7}
    ...    AND      Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']     Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Execute JavaScript    window.scrollBy(0, -1000)
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']      Click Element    ${checkbox20}
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['mahmoud', 'Rania']    Sleep    1s
    
    ...   AND   Run Keyword If   '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Set Variable    True
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']      Click Element    ${checkbox1}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Click Element    ${checkbox2}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']   Sleep    1s
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Click Element    ${checkbox3}
    ...    AND   Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']     Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in['Aisha', 'Mohamed']  Click Element    ${checkbox4}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']    Click Element    ${checkbox10}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']     Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']   Execute JavaScript    window.scrollBy(0, -1000)
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']     Click Element    ${checkbox20}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Aisha', 'Mohamed']   Sleep    1s
   
    ...    AND  Run Keyword If     '${FIRST_NAME}' in ['Omar']    Set Variable    True
    ...    AND    Run Keyword If    '${FIRST_NAME}' in['Omar']    Click Element    ${checkbox7}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']      Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']     Click Element    ${checkbox8}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']    Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']   Click Element    ${checkbox9}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Omar']    Sleep    1s
    ...    AND       Run Keyword If    '${FIRST_NAME}' in ['Omar']     Click Element    ${checkbox10}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']     Sleep    1s
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Omar']     Click Element    ${checkbox11}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Omar']      Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']     Execute JavaScript    window.scrollBy(0, -1000)
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']       Click Element    ${checkbox12}
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']     Sleep    1s
    ...    AND    Run Keyword If    '${FIRST_NAME}' in ['Omar']      Click Element    ${checkbox13}
    ...    AND     Run Keyword If    '${FIRST_NAME}' in ['Omar']    Sleep  1s 
    
   




  #Save
   ${element}=    Get WebElement      ${saveop}
  Scroll Element Into View    ${element}
  Click Element   ${element}
  #Click Element  ${saveop}
   sleep  1s 
   Wait Until Element Is Visible    ${buttonop}
   Click Element   ${buttonop}
   Sleep  1s
   
  

