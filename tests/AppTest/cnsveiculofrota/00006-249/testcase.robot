*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Veículos Frota
${APPNAME}     cnsveiculofrota
${OBJETIVO}    Verificar todos os campos na tela Consulta Veículos Frota.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Veículos Frota
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  Quando eu visualizar a tela: Veículos Frota (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Veículos Frota
  E verificar a label Código do Veículo
  E verificar a label Placa
  E verificar a label Data Inicial
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Quando eu visualizar a tela: Veículos Frota (Inclusão)
  resource_frmveiculofrota.Acessar Tela Veículos Frota (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Veículos Frota
  resource_cnsveiculofrota.Acessar Tela Consulta Veículos Frota

E verificar a label Código do Veículo
  resource_cnsveiculofrota.Verificar a label Código do Veículo

E verificar a label Placa
  resource_cnsveiculofrota.Verificar a label Placa

E verificar a label Data Inicial
  resource_cnsveiculofrota.Verificar a label Data Inicial

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
