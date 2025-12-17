*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot
Resource        ../../../../resource/app/resource_cnsusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Usuário (Filtro)
${SCREENNAME}  cnsusuario
${APPNAME}     Usuário

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Usuário (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Usuário (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome
  E verificar o campo: Login
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
    resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
    resource_cnsusuario.Acessar Tela: Usuário (Consulta)

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Usuário (Filtro)  
    resource_cnsusuario.Acessar Tela: Usuário (Filtro)

E verificar a label: Pesquisa
    resource_cnsusuario.Verificar a label Pesquisa

E verificar o campo: Nome
    resource_cnsusuario.Verificar o campo: Nome

E verificar o campo: Login
    resource_cnsusuario.Verificar o campo: Login

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"