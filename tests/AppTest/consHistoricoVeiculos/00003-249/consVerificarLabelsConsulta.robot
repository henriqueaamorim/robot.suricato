*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_consHistoricoVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Histórico por Veiculos
${APPNAME}     consHistoricoVeiculos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Histórico por Veiculos

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Histórico por Veiculos
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Histórico por Veiculos
  E verificar a label Cód. Veículo
  E verificar a label Placa do Veículo
  E verificar a label Marca do Veículo
  E verificar a label Modelo do Veículo
  E verificar a label Cor do Veículo
  E verificar a label Crachá do Veículo
  E verificar a label Baixa Crachá
  E verificar a label Data Inicial
  E verificar a label Data Final
  E verificar a label Grupo de Acesso
  E verificar a label Status do Veículo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Histórico por Veiculos
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos

E verificar a label Cód. Veículo
  resource_consHistoricoVeiculos.Verificar a label Cód. Veículo

E verificar a label Placa do Veículo
  resource_consHistoricoVeiculos.Verificar a label Placa do Veículo

E verificar a label Marca do Veículo
  resource_consHistoricoVeiculos.Verificar a label Marca do Veículo

E verificar a label Modelo do Veículo
  resource_consHistoricoVeiculos.Verificar a label Modelo do Veículo

E verificar a label Cor do Veículo
  resource_consHistoricoVeiculos.Verificar a label Cor do Veículo

E verificar a label Crachá do Veículo
  resource_consHistoricoVeiculos.Verificar a label Crachá do Veículo

E verificar a label Baixa Crachá
  resource_consHistoricoVeiculos.Verificar a label Baixa Crachá

E verificar a label Data Inicial
  resource_consHistoricoVeiculos.Verificar a label Data Inicial

E verificar a label Data Final
  resource_consHistoricoVeiculos.Verificar a label Data Final

E verificar a label Grupo de Acesso
  resource_consHistoricoVeiculos.Verificar a label Grupo de Acesso

E verificar a label Status do Veículo
  resource_consHistoricoVeiculos.Verificar a label Status do Veículo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
