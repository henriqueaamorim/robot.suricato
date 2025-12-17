*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot
Resource        ../../../../resource/app/resource_cnssinistros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Sinistro (Consulta)
${SCREENNAME}  Sinistro
${APPNAME}     cnssinistros

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Sinistro (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  Quando visualizar a tela: Sinistro (Consulta)
  Então devo verificar a label: Placa do Veículo
  E verificar a label: Data/Hora do Sinistro
  E verificar a label: Situação do Veículo
  E verificar a label: Código do Condutor
  E verificar a label: Nome do Condutor
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Quando visualizar a tela: Sinistro (Consulta)
  resource_cnssinistros.Acessar Tela Consulta de Sinistros

Então devo verificar a label: Placa do Veículo
  resource_cnssinistros.Verificar a label Placa do Veículo

E verificar a label: Data/Hora do Sinistro
  resource_cnssinistros.Verificar a label Data/Hora do Sinistro

E verificar a label: Situação do Veículo
  resource_cnssinistros.Verificar a label Situação do Veículo

E verificar a label: Código do Condutor
  resource_cnssinistros.Verificar a label Código do Condutor

E verificar a label: Nome do Condutor
  resource_cnssinistros.Verificar a label Nome do Condutor

E verificar a label: Descrição
  resource_cnssinistros.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	