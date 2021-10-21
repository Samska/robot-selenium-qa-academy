*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}       Welcome     Samuel
    Should Be Equal     ${result}       Olá Samuel, bem vindo ao curso básico de Robot Framework!