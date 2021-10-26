*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Keywords ***
Login com
        [Arguments]                     ${uname}                        ${pass}        
        Input Text                      css:input[name=username]        ${uname}
        Input Text                      css:input[name=password]        ${pass}
        Click Element                   class:botao        

*** Test Case ***
Login com sucesso
        [Tags]                                          login_sucesso
        Go To                                           ${url}        
        Select Frame                                    xpath=/html/frameset/frame[2]        
        Login com                                       samuel.andrade@emix.com.br              eMix@SA#2021
        Wait Until Page Contains                        usuário ativo
        Page Should Contain                             usuário ativo 

Usuario ou senha invalidos
        [Tags]                                          dados_invalidos
        Go To                                           ${url}
        Select Frame                                    xpath=/html/frameset/frame[2]        
        Login com                                       samuel.andrade@emix.com.br              teste
        Wait Until Page Contains                        Suporte as mensagens do serviço
        Page Should Contain                             Usuário ou senha digitados incorretamente.