*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSolicitacaoSaida.robot
Resource        ../../../../resource/app/resource_cnssolicitacaosaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Solicitação de Saída (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Solicitação de Saída (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Solicitação de Saída (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  resource_cnssolicitacaosaida.Acessar Tela Consulta de Solicitação de Saída

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Solicitação de Saída (Filtro)
  resource_cnssolicitacaosaida.Acessar Tela Consulta de Solicitação de Saída (Filtro)
