*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot
Resource        ../../../../resource/app/resource_cnssinistros.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Sinistros
${APPNAME}     cnssinistros
${OBJETIVO}    Verificar todos os campos na tela Consulta de Sinistros.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Sinistros
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  Quando eu visualizar a tela: Sinistros (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Sinistros
  E verificar a label Placa do Veículo
  E verificar a label Data/Hora do Sinistro
  E verificar a label Situação do Veículo
  E verificar a label Código do Condutor
  E verificar a label Nome do Condutor
  E verificar a label Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Quando eu visualizar a tela: Sinistros (Inclusão)
  resource_frmsinistros.Acessar Tela Sinistros (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Sinistros
  resource_cnssinistros.Acessar Tela Consulta de Sinistros

E verificar a label Placa do Veículo
  resource_cnssinistros.Verificar a label Placa do Veículo

E verificar a label Data/Hora do Sinistro
  resource_cnssinistros.Verificar a label Data/Hora do Sinistro

E verificar a label Situação do Veículo
  resource_cnssinistros.Verificar a label Situação do Veículo

E verificar a label Código do Condutor
  resource_cnssinistros.Verificar a label Código do Condutor

E verificar a label Nome do Condutor
  resource_cnssinistros.Verificar a label Nome do Condutor

E verificar a label Descrição
  resource_cnssinistros.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
