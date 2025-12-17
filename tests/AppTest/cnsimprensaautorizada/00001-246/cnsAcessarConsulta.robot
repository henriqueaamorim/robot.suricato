*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsimprensaautorizada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Candidato Autorizado (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Candidato Autorizado (Consulta)
  [Tags]  PRINT  POPULATED  246  247

  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Entrada
  Então devo visualizar a tela: Candidato Autorizado (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Entrada
  resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

Então devo visualizar a tela: Candidato Autorizado (Consulta)
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizado
