*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configurações Crachá
${APPNAME}     ctrConfiguracoesCracha
${OBJETIVO}    Verificar todos os campos na tela Configurações Crachá.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Configurações Crachá
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  Então devo visualizar a tela: Configurações Crachá
  E verificar a label Smart card
  E verificar o campo Mapa do SmartCard
  E verificar a label Matricula Automatica Cadastro de Crachá
  E verificar o campo Gravação de crachá/hist. Automático
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

Então devo visualizar a tela: Configurações Crachá
  resource_ctrConfiguracoesCracha.Acessar Tela Configurações Crachá

E verificar a label Smart card
  resource_ctrConfiguracoesCracha.Verificar a label Smart card

E verificar o campo Mapa do SmartCard
  resource_ctrConfiguracoesCracha.Verificar o campo Mapa do SmartCard

E verificar a label Matricula Automatica Cadastro de Crachá
  resource_ctrConfiguracoesCracha.Verificar a label Matricula Automatica Cadastro de Crachá

E verificar o campo Gravação de crachá/hist. Automático
  resource_ctrConfiguracoesCracha.Verificar o campo Gravação de crachá/hist. Automático

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
