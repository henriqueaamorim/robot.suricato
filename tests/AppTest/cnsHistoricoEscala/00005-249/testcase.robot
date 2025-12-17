*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoEscala.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Consulta de Histórico de Escalas

*** Test Cases ***
Testcase: Acessar Tela Consulta de Histórico de Escalas
  [Tags]  PRINT  POPULATED  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Quando eu visualizar a tela: Histórico de Escalas (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Escalas

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Quando eu visualizar a tela: Histórico de Escalas (Atualização)
  resource_frmHistoricoEscala.Acessar Tela Histórico de Escalas (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Histórico de Escalas
  resource_cnsHistoricoEscala.Acessar Tela Consulta de Histórico de Escalas
