# *** Settings ***
# Library   SeleniumLibrary
# Resource   login.robot
# variables  D:/PFE/test1/lacators.py
# *** Keywords ***
# add validation
#   Click Element    ${articlvalid}
#   Sleep  1s
#   Wait Until Element Is Visible    ${add_validation}
#   Click Element      ${add_validation}
#   Sleep  1s
#   Input Text   ${namevalid}   discount  
#   Sleep   1s
#   Select From List By Label   ${typevalid}      Tarif Switch 
#   Sleep  1s
#   Input Text    ${valuevalid}    2
#   Sleep  1s
#   Click Element    ${carparksvalid}
#   Sleep  1s
#   click element  ${pumccarpark}
#   Sleep  1s
#   Click Element    ${carparksvalid}
#   Sleep   1s
#   Click Element    ${Qpark}
#   Sleep  1s
#   click element   ${savevalid}
#   Sleep  1s
#   Wait Until Element Is Visible        ${savevalidddd}
#   click element       ${savevalidddd}
#   Sleep  1s 
  
