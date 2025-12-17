*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposVisitas.robot
Resource        ../../../../resource/app/resource_frmTiposVisitas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Visita (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Tipo de Visita (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  Então devo visualizar a tela: Tipo de Visita (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Tipo de Visita

Então devo visualizar a tela: Tipo de Visita (Consulta)
  resource_cnsTiposVisitas.Acessar Tela Consulta de Tipos de Visita


