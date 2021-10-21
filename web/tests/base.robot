*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${url}              https://training-wheels-protocol.herokuapp.com/
${browser}          chrome

*** Keywords ***
Nova sessão
        Open Browser                    ${url}      ${browser}

Encerra sessão
        Capture Page Screenshot
        Close Browser