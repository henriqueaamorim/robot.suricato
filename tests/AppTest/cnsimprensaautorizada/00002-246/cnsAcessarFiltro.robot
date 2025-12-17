*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsimprensaautorizada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Candidato Autorizado (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Candidato Autorizado (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Entrada
  Então devo visualizar a tela: Candidato Autorizado (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Candidato Autorizado (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Entrada
  resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

Então devo visualizar a tela: Candidato Autorizado (Consulta)
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizado

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Candidato Autorizado (Filtro)
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizada: Filtro