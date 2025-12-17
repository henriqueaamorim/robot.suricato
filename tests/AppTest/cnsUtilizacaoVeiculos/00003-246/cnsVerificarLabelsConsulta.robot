*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUtilizacaoVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Utilização de Veículos
${APPNAME}     cnsUtilizacaoVeiculos
${OBJETIVO}    Verificar todas as labels na tela: Utilização de Veículos (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Utilização de Veículos (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  Quando visualizar a tela: Utilização de Veículos (Consulta)
  E verificar a label Veículo
  E verificar a label Placa
  E verificar a label Modelo Veículo
  E verificar a label Data Saída
  E verificar a label Hora Saída
  E verificar a label Cód. Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Cód Matrícula
  E verificar a label Nome Pessoa
  E verificar a label Portaria de Saída
  E verificar a label Motivo Uso 
  E verificar a label Destino
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

Quando visualizar a tela: Utilização de Veículos (Consulta)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Utilização de Veículos

E verificar a label Veículo
  resource_cnsUtilizacaoVeiculos.Verificar a label Veículo

E verificar a label Placa
  resource_cnsUtilizacaoVeiculos.Verificar a label Placa

E verificar a label Modelo Veículo
  resource_cnsUtilizacaoVeiculos.Verificar a label Modelo Veículo

E verificar a label Data Saída
  resource_cnsUtilizacaoVeiculos.Verificar a label Data Saída

E verificar a label Hora Saída
  resource_cnsUtilizacaoVeiculos.Verificar a label Hora Saída

E verificar a label Cód. Empresa
  resource_cnsUtilizacaoVeiculos.Verificar a label Cód. Empresa

E verificar a label Tipo Colaborador
  resource_cnsUtilizacaoVeiculos.Verificar a label Tipo Colaborador

E verificar a label Cód Matrícula
  resource_cnsUtilizacaoVeiculos.Verificar a label Cód Matrícula

E verificar a label Nome Pessoa
  resource_cnsUtilizacaoVeiculos.Verificar a label Nome Pessoa

E verificar a label Portaria de Saída
  resource_cnsUtilizacaoVeiculos.Verificar a label Portaria de Saída

E verificar a label Motivo Uso 
  resource_cnsUtilizacaoVeiculos.Verificar a label Motivo Uso 

E verificar a label Destino
  resource_cnsUtilizacaoVeiculos.Verificar a label Destino

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
