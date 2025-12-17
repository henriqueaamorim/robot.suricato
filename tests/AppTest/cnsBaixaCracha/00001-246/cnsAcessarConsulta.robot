*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Baixa Autorização Entrada (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Baixa Autorização Entrada (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Então devo visualizar a tela: Consulta de Baixa Autorização Entrada

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Então devo visualizar a tela: Consulta de Baixa Autorização Entrada
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)
