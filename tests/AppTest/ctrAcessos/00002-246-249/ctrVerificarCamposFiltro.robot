*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Comandos do Acesso On-Line
${APPNAME}     ctrAcessos
${OBJETIVO}    Verificar todos os campos na tela: Comandos do Acesso On-Line.

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Comandos do Acesso On-Line
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Acesso
  Então devo visualizar a tela: Comandos do Acesso On-Line
  E verificar o campo Planta*
  E verificar o campo Gateway
  E verificar o campo Código do Codin
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Então devo visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line

E verificar o campo Planta*
  resource_ctrAcessos.Verificar o campo Planta*

E verificar o campo Gateway
  resource_ctrAcessos.Verificar o campo Gateway

E verificar o campo Código do Codin
  resource_ctrAcessos.Verificar o campo Código do Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"