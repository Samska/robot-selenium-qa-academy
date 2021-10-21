*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Case ***
Marcar por ID
        [Tags]                              id        
        Go To                               ${url}/radios
        Select Radio Button                 movies      cap
        Radio Button Should Be Set To       movies      cap

Marcar por Value
        [Tags]                              value        
        Go To                               ${url}/radios
        Select Radio Button                 movies      guardians
        Radio Button Should Be Set To       movies      guardians
