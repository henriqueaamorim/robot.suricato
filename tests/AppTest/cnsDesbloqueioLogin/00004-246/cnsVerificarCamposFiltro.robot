*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloqueioLogin.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Ativação de Usuário
${APPNAME}     cnsDesbloqueioLogin
${OBJETIVO}    Verificar todos os campos na tela: Ativação de Usuário (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Ativação de Usuário (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  Quando visualizar a tela: Ativação de Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Ativação de Usuário (Filtro)
  E verificar o campo Usuário 
  E verificar o campo Login
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário

Quando visualizar a tela: Ativação de Usuário (Consulta)
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Ativação de Usuário (Filtro)
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário - Filtro

E verificar o campo Usuário 
  resource_cnsDesbloqueioLogin.Verificar o campo Usuário 

E verificar o campo Login
  resource_cnsDesbloqueioLogin.Verificar o campo Login

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"


