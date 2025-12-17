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
${OBJETIVO}    Verificar todos os campos na: tela Utilização de Veículos (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na: tela Utilização de Veículos (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  Quando visualizar a tela: Utilização de Veículos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Pesquisa (Filtro)
  E verificar o campo Veículo
  E verificar o campo Placa
  E verificar o campo Modelo Veículo
  E verificar o campo Data Saída
  E verificar o campo Hora Saída
  E verificar o campo Cód. Empresa
  E verificar o campo Tipo Colaborador
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

Quando visualizar a tela: Utilização de Veículos (Consulta)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Utilização de Veículos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Pesquisa (Filtro)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Pesquisa
  
E verificar o campo Veículo
  resource_cnsUtilizacaoVeiculos.Verificar o campo Veículo

E verificar o campo Placa
  resource_cnsUtilizacaoVeiculos.Verificar o campo Placa

E verificar o campo Modelo Veículo
  resource_cnsUtilizacaoVeiculos.Verificar o campo Modelo Veículo

E verificar o campo Data Saída
  resource_cnsUtilizacaoVeiculos.Verificar o campo Data Saída

E verificar o campo Hora Saída
  resource_cnsUtilizacaoVeiculos.Verificar o campo Hora Saída

E verificar o campo Cód. Empresa
  resource_cnsUtilizacaoVeiculos.Verificar o campo Cód. Empresa

E verificar o campo Tipo Colaborador
  resource_cnsUtilizacaoVeiculos.Verificar o campo Tipo Colaborador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
