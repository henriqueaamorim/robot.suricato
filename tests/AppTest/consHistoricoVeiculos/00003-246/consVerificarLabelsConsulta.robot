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
${OBJETIVO}    Verificar todas as labels na tela: Veículo de Colaborador (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Veículo de Colaborador (Consulta)
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  Então devo verificar a label: Placa
  E verificar a label: Marca
  E verificar a label: Modelo
  E verificar a label: Cor
  E verificar a label: Crachá
  E verificar a label: Data Início
  E verificar a label: Hora Início
  E verificar a label: Data Fim
  E verificar a label: Hora Fim
  E verificar a label: Grupo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos

Então devo verificar a label: Placa
  resource_consHistoricoVeiculos.Verificar a label Placa

E verificar a label: Marca
    resource_consHistoricoVeiculos.Verificar a label Marca

E verificar a label: Modelo
    resource_consHistoricoVeiculos.Verificar a label Modelo

E verificar a label: Cor
    resource_consHistoricoVeiculos.Verificar a label Cor

E verificar a label: Crachá
    resource_consHistoricoVeiculos.Verificar a label Crachá

E verificar a label: Data Início
    resource_consHistoricoVeiculos.Verificar a label Data Início

E verificar a label: Hora Início
    resource_consHistoricoVeiculos.Verificar a label Hora Início

E verificar a label: Data Fim
    resource_consHistoricoVeiculos.Verificar a label Data Fim

E verificar a label: Hora Fim
    resource_consHistoricoVeiculos.Verificar a label Hora Fim

E verificar a label: Grupo  
    resource_consHistoricoVeiculos.Verificar a label Grupo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
