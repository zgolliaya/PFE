*** Settings ***
Library    SeleniumLibrary
Resource    login.robot
#Resource    Access.robot
Resource     addoperator1.robot
Resource     ADDValidation.robot
Resource    ADD_carparks.robot
Resource    ADDproduction.robot
Suite Teardown  Close All Browsers

*** Test Cases ***
logintest
   [tags]    userpassword
    Set Selenium Timeout    10s
    Access Web Page With Authentication
addoperatortest
     [tags]     addop
     Set Selenium Timeout    20s
     sleep  10s
    Add Operators   ${first_name}    ${last_name}    ${username1}    ${password}    ${REPEATPASSWORD}    ${Contract}   ${CONSUMER}    ${ashierPassword}  
    sleep    5s
# addcarparkstest
#    [tags]  carparks
#    Add carparks 
# add_validation
#    [tags]   add1validation 
#    add validation
# add__production
#    [tags]   add1production
#    ADD_production
   
