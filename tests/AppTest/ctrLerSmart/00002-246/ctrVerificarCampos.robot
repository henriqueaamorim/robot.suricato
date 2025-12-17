*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLerSmart.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Ler Smart Card
${APPNAME}     ctrLerSmart
${OBJETIVO}    Verificar todos os campos na tela Ler Smart Card


*** Test Cases ***
Testcase: Verificar todos os campos na tela Ler Smart Card
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Ler Smart Card
  Quando visualizar a tela: Ler Smart Card
  Então devo verificar o campo Fisico 
  E verificar o campo Logico 
  E verificar o campo Dados
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Ler Smart Card
  resource_mnu.Clicar No Menu Registro | Crachá | Ler Smart Card

Quando visualizar a tela: Ler Smart Card
  resource_ctrLerSmart.Acessar Tela Ler Smart Card

Então devo verificar o campo Fisico 
  resource_ctrLerSmart.E verificar o campo Físico 

E verificar o campo Logico 
   resource_ctrLerSmart.E verificar o campo Lógico 

E verificar o campo Dados
   resource_ctrLerSmart.E verificar o campo Dados

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}" 
