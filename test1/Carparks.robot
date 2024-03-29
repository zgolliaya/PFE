*** Settings ***
Library    SeleniumLibrary
Resource    login.robot
Resource    Access.robot
Resource    ADD_carparks.robot
Suite Teardown  Close All Browsers
*** Test Cases ***
Access web 
   Set Selenium Timeout    10s
   Access Web Page With Authentication
    [Documentation]    Ajoute un opérateur dans la page web
    Add Operators    fatmaa    zgolli    toto    afh234    afh234   12345     4567    FDG34
   #Add Operators
   #Add carparks 