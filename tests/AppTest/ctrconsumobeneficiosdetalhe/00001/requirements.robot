*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/resource_requirements.robot
Resource        ../../../../resource/common/resource_mnu.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesSuri.robot #SUBSTITUIR


*** Variables ***

${OBJETIVO}   Cadastrar um Consumo de Benefício

*** Keywords ***

Executar Requisito
    
    IF  '${REQ}' == 'TRUE'
      ${status}  Run Keyword And Return Status  Requirements
      Verificar requisito    ${status}
    END

Requirements
    Cadastrar Consumo de Benefício


Cadastrar Consumo de Benefício
  resource_login.Acessar Suricato
  resource_mnu.Clicar No Menu 



