*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPontes.robot
Resource        ../../../../resource/app/resource_frmPontes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Programação - Troca de Ponte (Consulta) 

*** Test Cases ***
Testcase: Acessar Tela: Programação - Troca de Ponte (Consulta) 
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
  Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
   resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)
   resource_cnsPontes.Acessar Tela: Programação - Troca de Ponte (Consulta)

