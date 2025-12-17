*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Infrações
${APPNAME}     cnsinfracoesfrota 
${OBJETIVO}    Verificar todos os campos na tela Consulta Infrações.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Infrações
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  Quando eu visualizar a tela: Infrações (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Infrações
  E verificar a label Data Infrações
  E verificar a label Hora Infrações
  E verificar a label Veículo
  E verificar a label Condutor
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando eu visualizar a tela: Infrações (Inclusão)
  resource_frminfracoesfrota.Acessar Tela Infrações (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Infrações
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações

E verificar a label Data Infrações
  resource_cnsinfracoesfrota.Verificar a label Data Infrações

E verificar a label Hora Infrações
  resource_cnsinfracoesfrota.Verificar a label Hora Infrações

E verificar a label Veículo
  resource_cnsinfracoesfrota.Verificar a label Veículo

E verificar a label Condutor
  resource_cnsinfracoesfrota.Verificar a label Condutor

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
