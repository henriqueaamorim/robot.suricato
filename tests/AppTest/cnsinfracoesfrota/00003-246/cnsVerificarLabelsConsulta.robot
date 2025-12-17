*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Infrações (Consulta)
${SCREENNAME}  Infrações
${APPNAME}     cnsinfracoesfrota

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Infrações (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  Quando visualizar a tela: Infrações (Consulta)
  Então devo verificar a label: Data Infrações
  E verificar a label: Hora Infrações
  E verificar a label: Veículo
  E verificar a label: Condutor
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando visualizar a tela: Infrações (Consulta)
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações

Então devo verificar a label: Data Infrações
  resource_cnsinfracoesfrota.Verificar a label Data Infrações

E verificar a label: Hora Infrações
  resource_cnsinfracoesfrota.Verificar a label Hora Infrações

E verificar a label: Veículo
  resource_cnsinfracoesfrota.Verificar a label Veículo

E verificar a label: Condutor
  resource_cnsinfracoesfrota.Verificar o campo: Condutor

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	