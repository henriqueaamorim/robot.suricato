*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoContratos.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Histórico de Contratos
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  E clicar no botão: Consulta
  Então devo visualizar a tela: Consulta de Histórico de Contratos

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Atualização)

E clicar no botão: Consulta
    resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Histórico de Contratos
  resource_cnsHistoricoContratos.Acessar Tela Consulta de Histórico de Contratos
