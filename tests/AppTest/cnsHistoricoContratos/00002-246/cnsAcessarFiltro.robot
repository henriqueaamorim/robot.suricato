*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoContratos.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Contrato (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Contrato (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Então devo visualizar a tela: Histórico de Contrato (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Contrato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Então devo visualizar a tela: Histórico de Contrato (Consulta)
  resource_cnsHistoricoContratos.Acessar Tela Consulta de Histórico de Contratos

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Contrato (Filtro)
    resource_cnsHistoricoContratos.Acessar Tela Filtro de Histórico de Contratos