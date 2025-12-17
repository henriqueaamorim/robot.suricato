*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoContratos.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Contrato (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Contrato (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Então devo visualizar a tela: Histórico de Contrato (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Então devo visualizar a tela: Histórico de Contrato (Consulta)
  resource_cnsHistoricoContratos.Acessar Tela Consulta de Histórico de Contratos
