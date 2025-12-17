*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloqueioLogin.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Ativação de Usuário (Consulta)
${SCREENNAME}  Ativação de Usuário
${APPNAME}     cnsDesbloqueioLogin 


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Ativação de Usuário (Consulta)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  Quando visualizar a tela: Ativação de Usuário (Consulta)
  Então devo veriicar a label: Usuário
  E verificar a label: Login
  E verificar a label: Bloqueado
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário

Quando visualizar a tela: Ativação de Usuário (Consulta)
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário

Então devo veriicar a label: Usuário
  resource_cnsDesbloqueioLogin.Verificar a label: Usuário

E verificar a label: Login
   resource_cnsDesbloqueioLogin.Verificar a label: Login

E verificar a label: Bloqueado
   resource_cnsDesbloqueioLogin.Verificar a label: Bloqueado

E verificar se existe o campo Teste na tela  
   resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"