*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsModeloColetores.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as label na Tela: Modelo de Equipamento (Consulta)
${SCREENNAME}  Modelo de Equipamento
${APPNAME}     cnsModeloColetores

*** Test Cases ***
Testcase: Verificar todas as label na Tela: Modelo de Equipamento (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  Quando vizualizar a tela: Modelo de Equipamento (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: Tipo de Comunicação
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  resource_mnu.Clicar no menu Dispositivo | Codin | Modelo de Equipamento

Quando vizualizar a tela: Modelo de Equipamento (Consulta)
  resource_cnsModeloColetores.Acessar Tela Consulta de Modelo de Equipamento

Então devo verificar a label: Código
    resource_cnsModeloColetores.Verificar a label Código

E verificar a label: Descrição
    resource_cnsModeloColetores.Verificar a label Descrição

E verificar a label: Tipo de Comunicação
    resource_cnsModeloColetores.Verificar a label Tipo de Comunicação

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"