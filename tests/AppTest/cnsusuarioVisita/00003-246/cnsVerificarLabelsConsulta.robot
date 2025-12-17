*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsusuarioVisita.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Aprovador de Solitação de Visita (Consulta)
${SCREENNAME}  cnsusuarioVisita
${APPNAME}     Aprovador de Solitação de Visita


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Aprovador de Solitação de Visita (Consulta)
  [Tags]   VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
  Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Código
  E verificar a label: Login 
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
    resource_mnu.Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
    resource_cnsusuarioVisita.Acessar Tela: Aprovador de Solitação de Visita (Consulta)

Então devo verificar a label: Código
    resource_cnsusuarioVisita.Verificar a label: Código

E verificar a label: Código
    resource_cnsusuarioVisita.Verificar a label: Código

E verificar a label: Login 
    resource_cnsusuarioVisita.Verificar a label: Login

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"