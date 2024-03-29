### Settings ###
Documentation     Exemple de test avec Robot Framework
Library           SeleniumLibrary

*** Variables ***
${Browser}        chrome

*** Test Cases ***
Ouvrir le Navigateur et Visiter Google
    Open Browser    http://www.google.com    ${Browser}
    Input Text      name=q    Robot Framework
    Click Button    name=btnK
    Sleep           2s    # Attendre pendant 2 secondes
    Close Browser

