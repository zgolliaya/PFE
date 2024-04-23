*** Settings ***
Library   SeleniumLibrary
Resource   login.robot
variables  D:/PFE/test1/lacators.py
*** Keywords ***
ADD_production
   Wait Until Element Is Visible   ${articalproduc} 
   Click Element    ${articalproduc}
  Sleep  1s
  Wait Until Element Is Visible    ${add_productio}
  Click Element      ${add_productio}
  Sleep  1s
  Input Text   ${nameproduction}   PLUS
  Sleep   1s
  Select From List By Label   ${typeproduc}      Prepaid 
  Sleep  1s
  Input Text    ${priceproduc}    250
  Sleep  1s
  Click Element    ${fromprod}
  Sleep  1s
  Click Element    ${Selectnextday}
  Sleep  1s
  Click Element    ${toprod}
  Sleep  1s
  click element    ${nextmoth}
  Sleep  1s
  Click Element    ${prodcarparks}
  Sleep  1s
  click element  ${pumccarpark}
  Sleep  1s
  Click Element     ${prodcarparks}
  Sleep   1s
  Click Element    ${Qpark}
  Sleep  1s
  click element   ${saveproduc}
  Sleep  1s