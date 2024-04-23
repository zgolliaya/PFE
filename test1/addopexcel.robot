*** Settings ***
Library    SeleniumLibrary
Library   ExcelLibrary
Resource    login.robot
 Resource    Access.robot
Resource     ADDValidation.robot
Resource    ADD_carparks.robot
Resource    ADDproduction.robot
Suite Teardown  Close All Browsers
*** Variables ***
${EXCEL_FILE}   D:/PFE/test1/testdata/desoperateurs.xlsx
*** Test Cases ***
logintest
   [tags]    userpassword
    Set Selenium Timeout    10s
    Access Web Page With Authentication
addoperatortest
     [tags]     addwithexcel
    Open Excel Document  ${EXCEL_FILE}    MyExcelFile
    FOR  ${row_index}    IN RANGE    2    10
     
         ${first_name}=    Read Excel Cell   ${row_index}        1
         ${last_name}=    Read Excel Cell  ${row_index}          2
         ${USERNAME}=    Read Excel Cell   ${row_index}          3
         ${password}=    Read Excel Cell    ${row_index}         4   
         ${REPEATPASSWORD} =    Read Excel Cell    ${row_index}  5      
         ${Contract} =    Read Excel Cell    ${row_index}        6
        ${CONSUMER} =    Read Excel Cell    ${row_index}        7 
         ${ashierPassword} =    Read Excel Cell    ${row_index}  8     
       
       Add Operators   ${first_name}    ${last_name}    ${username}    ${password}    ${repeat_password}    ${Contract}   ${CONSUMER}    ${ashierPassword}  
       
     END
     sleep    5s
addcarparkstest
    [tags]  carparks
    Add carparks 
add_validation
    [tags]   add1validation 
    add validation
add__production
    [tags]   add1production
    ADD_production
   












