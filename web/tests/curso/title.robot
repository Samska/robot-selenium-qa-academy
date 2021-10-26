*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Case ***
Deve validar o título da página
        Title Should Be     Training Wheels Protocol