*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_cons_Cracha_veiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Crachá Veículos (Busca Externa) através da tela Veículo de Colaborador - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Ao visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar no botão: Buscar Dados Externos para Crachá do Veículo
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachá Veículos (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Ao visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar no botão: Buscar Dados Externos para Crachá do Veículo
  resource_frmveiculocolaboradores.Clicar No Botão Buscar Dados Externos Para Crachá do Veículo

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachá Veículos (Busca Externa)
  resource_cons_Cracha_veiculo.Acessar Tela Consulta de Crachá Veículos (Busca Externa)
