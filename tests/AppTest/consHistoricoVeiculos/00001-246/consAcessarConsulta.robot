*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_consHistoricoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Acessar Tela: Veículo de Colaborador (Consulta)
*** Test Cases ***
Testcase: Acessar Tela: Veículo de Colaborador (Consulta)
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  Então devo visualizar a tela: Veículo de Colaborador (Consulta)
  

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Então devo visualizar a tela: Veículo de Colaborador (Consulta)
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos

