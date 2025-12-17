*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Local
  [Tags]  PRINT  POPULATED  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Quando eu visualizar a tela: Histórico de Local (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Local

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Quando eu visualizar a tela: Histórico de Local (Atualização)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Histórico de Local
  resource_cnsHistoricoLocal.Acessar Tela Consulta de Histórico de Local
