*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Keywords ***
Login With
        [Arguments]                     ${uname}       ${pass}
        Input Text                      css:input[name=username]        ${uname}
        Input Text                      css:input[name=password]        ${pass}
        Click Element                   class:btn-login

Should Contain Login Alert
        [Arguments]                     ${texto}
        ${message}=                     Get WebElement          id:flash
        Should Contain                  ${message.text}         ${texto} 

Should See Logged User
        [Arguments]                     ${user}
        Page Should Contain             Olá, ${user}. Você acessou a área logada!

*** Test Case ***
Login com sucesso
        [Tags]                          login_sucesso
        Go To                           ${url}/login
        Login With                      stark       jarvis!
        Should See Logged User          Tony Stark      

Senha invalida
        [Tags]                          login_invalido
        Go To                           ${url}/login
        Login With                      stark       teste
        Should Contain Login Alert      Senha é invalida!          

Usuario nao cadastrado
        [Tags]                          login_semcadastro
        Go To                           ${url}/login
        Login With                      teste       teste
        Should Contain Login Alert      O usuário informado não está cadastrado!