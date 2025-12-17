*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Veículos Frota (Consulta)
${SCREENNAME}  Veículos Frota
${APPNAME}     cnsveiculofrota

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Veículos Frota (Consulta)
  [Tags]   VERIFY  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  Quando visualizar a tela: Veículos Frota (Consulta)
  Então devo verificar a label: Código do Veículo
  E verificar a label: Placa
  E verificar a label: Data Inicial
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Quando visualizar a tela: Veículos Frota (Consulta)
  resource_cnsveiculofrota.Acessar Tela Consulta Veículos Frota

Então devo verificar a label: Código do Veículo
  resource_cnsveiculofrota.Verificar a label Código do Veículo

E verificar a label: Placa
  resource_cnsveiculofrota.Verificar a label Placa

E verificar a label: Data Inicial
  resource_cnsveiculofrota.Verificar a label Data Inicial

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"