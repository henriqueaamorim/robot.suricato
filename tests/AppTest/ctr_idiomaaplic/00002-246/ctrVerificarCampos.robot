*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_idiomaaplic.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Idioma
${APPNAME}     ctr_idiomaaplic
${OBJETIVO}    Verificar todos os campos na tela: Idioma.

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Idioma
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Idioma
  Quando visualizar a tela: Idioma
  Então devo verificar a label Idioma
  E verificar o campo Aplicação
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Idioma
  resource_mnu.Clicar No Menu Configurações | Idioma

Quando visualizar a tela: Idioma
  resource_ctr_idiomaaplic.Acessar Tela Idioma

Então devo verificar a label Idioma
  resource_ctr_idiomaaplic.Verificar a label Idioma

E verificar o campo Aplicação
  resource_ctr_idiomaaplic.Verificar o campo Aplicação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
