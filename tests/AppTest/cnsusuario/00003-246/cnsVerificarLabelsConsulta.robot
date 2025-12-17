*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot
Resource        ../../../../resource/app/resource_cnsusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Usuário (Consulta)
${SCREENNAME}  cnsusuario
${APPNAME}     Usuário

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Usuário (Consulta)
  [Tags]  VERIFY    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Nome
  E verificar a label: Login
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
  resource_cnsusuario.Acessar Tela: Usuário (Consulta)

Então devo verificar a label: Código
  resource_cnsusuario.Verificar a label: Código

E verificar a label: Nome
  resource_cnsusuario.Verificar a label: Nome

E verificar a label: Login
  resource_cnsusuario.Verificar a label: Login

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

