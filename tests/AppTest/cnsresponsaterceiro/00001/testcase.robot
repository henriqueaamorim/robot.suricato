*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abaVeiculos.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_frmHistoricoResponsaveis.robot
Resource        ../../../../resource/app/resource_cnsresponsaterceiro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Colaborador Responsável - Filtro (Busca Externa) através da tela Cadastro de Responsáveis por Veículo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar na aba: Responsáveis
  Então eu devo visualizar a tela: Cadastro de Responsáveis por Veículo
  Ao clicar no botão: Buscar Dados Externos para Cód. Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Colaborador Responsável - Filtro (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar na aba: Responsáveis
  resource_abaVeiculos.Clicar Na Aba Responsáveis

Então eu devo visualizar a tela: Cadastro de Responsáveis por Veículo
  resource_frmHistoricoResponsaveis.Acessar Tela Cadastro de Responsáveis por Veículo

Ao clicar no botão: Buscar Dados Externos para Cód. Colaborador
  resource_frmHistoricoResponsaveis.Clicar No Botão Buscar Dados Externos Para Cód. Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Colaborador Responsável - Filtro (Busca Externa)
  resource_cnsresponsaterceiro.Acessar Tela Colaborador Responsável - Filtro (Busca Externa)
