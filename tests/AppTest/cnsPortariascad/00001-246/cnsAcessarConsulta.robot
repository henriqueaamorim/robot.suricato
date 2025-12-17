*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot
Resource        ../../../../resource/app/resource_cnsPortariascad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Portaria (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Portaria (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Portaria
  Então devo visualizar a tela: Portaria (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Portaria
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Então devo visualizar a tela: Portaria (Consulta)
  resource_cnsPortariascad.Acessar Tela Consulta de Portarias
