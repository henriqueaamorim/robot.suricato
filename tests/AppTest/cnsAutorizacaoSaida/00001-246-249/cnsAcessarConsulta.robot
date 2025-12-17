*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Autorizações de Saída (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Autorizações de Saída (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Então devo visualizar a tela: Autorizações de Saída (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Então devo visualizar a tela: Autorizações de Saída (Consulta)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída
