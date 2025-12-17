*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrpronturario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Prontuário do Veículo
${SCREENNAME}  Prontuário do Veículo
${APPNAME}     ctrpronturario

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Prontuário do Veículo
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  Quando visualizar a tela: Prontuário do Veículo
  Então devo verificar o campo: Veículo  
  E verificar o campo: Crachá  
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

Quando visualizar a tela: Prontuário do Veículo
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo

Então devo verificar o campo: Veículo  
  resource_ctrpronturario.Verificar o campo Veículo

E verificar o campo: Crachá  
  resource_ctrpronturario.Verificar o campo Crachá

E verificar se existe o campo Teste na tela  
   resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"