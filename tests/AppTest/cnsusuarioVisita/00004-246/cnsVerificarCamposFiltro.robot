*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsusuarioVisita.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Aprovador de Solitação de Visita (Filtro)
${SCREENNAME}  cnsusuarioVisita
${APPNAME}     Aprovador de Solitação de Visita

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Aprovador de Solitação de Visita (Filtro)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
  Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Aprovador de Solitação de Visita (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome
  E verificar o campo: Login
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
    resource_mnu.Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
    resource_cnsusuarioVisita.Acessar Tela: Aprovador de Solitação de Visita (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovador de Solitação de Visita (Filtro)  
    resource_cnsusuarioVisita.Acessar Tela: Aprovador de Solitação de Visita (Filtro)

E verificar a label: Pesquisa
    resource_cnsusuarioVisita.Verificar a label Pesquisa

E verificar o campo: Nome
    resource_cnsusuarioVisita.Verificar o campo: Nome

E verificar o campo: Login  
    resource_cnsusuarioVisita.Verificar o campo: Login

E verificar se existe o campo Teste na tela 
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"