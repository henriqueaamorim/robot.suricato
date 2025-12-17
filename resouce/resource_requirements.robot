*** Settings ***
Resource   resource_login.robot


*** Variables ***

${ALLOWED}     FALSE

*** Keywords ***

Verificar requisito
    [Arguments]   ${status}
    

        IF  '${status}' == 'False' 
            resource_login.Fechar navegador
            Skip If    True
        ELSE
            Set Global Variable    ${REQ}   FALSE
        END


