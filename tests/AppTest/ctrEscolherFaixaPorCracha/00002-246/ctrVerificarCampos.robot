*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEscolherFaixaPorCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Gravação por Faixa
${APPNAME}     ctrEscolherFaixaPorCracha
${OBJETIVO}    Verificar todos os campos na tela: Gravação de Crachá Por Faixa

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Gravação de Crachá Por Faixa
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  Quando visualizar a tela: Gravação de Crachá Por Faixa
  Então devo verificar a label: Gravação de Crachá Por Faixa
  E verificar o campo: Tipos de Crachás*	
  E verificar o campo: Faixa Inicial*	
  E verificar o campo: Faixa Final*	
  E verificar o campo: Qtde. Crachá*	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

Quando visualizar a tela: Gravação de Crachá Por Faixa
  resource_ctrEscolherFaixaPorCracha.Acessar Tela Gravação de Crachá Por Faixa

Então devo verificar a label: Gravação de Crachá Por Faixa
    resource_ctrEscolherFaixaPorCracha.E verificar a label: Gravação de Crachá Por Faixa

E verificar o campo: Tipos de Crachás*	
  resource_ctrEscolherFaixaPorCracha.E verificar o campo: Tipos de Crachás*

E verificar o campo: Faixa Inicial*	
  resource_ctrEscolherFaixaPorCracha.E verificar o campo Faixa Inicial*

E verificar o campo: Faixa Final*	
  resource_ctrEscolherFaixaPorCracha.E verificar o campo:Faixa Final*

E verificar o campo: Qtde. Crachá*	
  resource_ctrEscolherFaixaPorCracha.E verificar o campo Qtde. Crachá*

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"