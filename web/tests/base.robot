*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${url}              https://homologacao.follownet.com.br/
${browser}          chrome

*** Keywords ***
Nova sessão
        Open Browser                    ${url}      ${browser}
        Maximize Browser Window

Encerra sessão
        Capture Page Screenshot
        Close Browser                