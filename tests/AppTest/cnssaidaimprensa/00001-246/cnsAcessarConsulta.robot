*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidaimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Saída de Candidato (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Saída de Candidato (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Saída
  Então devo visualizar a tela: Saída de Candidato (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Saída
  resource_mnu.Clicar No Menu Entrada | Candidato | Saída

Então devo visualizar a tela: Saída de Candidato (Consulta)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Consulta)
