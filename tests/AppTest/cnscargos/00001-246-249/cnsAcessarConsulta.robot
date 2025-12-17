*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Cargos (Consulta) 


*** Test Cases ***
Testcase: Acessar tela: Cargos (Consulta) 
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  Então devo visualizar a tela: Cargos (Consulta) 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Cargo

Então devo visualizar a tela: Cargos (Consulta) 
  resource_cnscargos.Acessar Tela Consulta de Cargos 
