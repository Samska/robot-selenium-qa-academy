*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    //*[@id='checkboxes']/input[7]

*** Test Case ***
Marcar checkbox com ID
        [Tags]                          id        
        Go To                           ${url}/checkboxes       
        Select Checkbox                 ${check_thor}
        Checkbox Should Be Selected     ${check_thor}

Marcar checkbox com CSS Selector
        [Tags]                          css-selector        
        Go To                           ${url}/checkboxes       
        Select Checkbox                 ${check_iron}
        Checkbox Should Be Selected     ${check_iron}

Marcar checkbox com xPath
        [Tags]                          xpath        
        Go To                           ${url}/checkboxes       
        Select Checkbox                 ${check_panther}
        Checkbox Should Be Selected     ${check_panther}