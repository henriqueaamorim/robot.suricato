*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consrestrito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Acesso as Áreas Restritas (Filtro)	
${SCREENNAME}  Acesso as Áreas Restritas
${APPNAME}     consrestrito

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Acesso as Áreas Restritas (Filtro)	
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)	
  Então devo verificar a label: Pesquisa
  E verificar o campo: Grupo de Acesso	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Consultar Acesso

Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)	
  resource_consrestrito.Acessar Tela: Acesso as Áreas Restritas (Filtro)

Então devo verificar a label: Pesquisa
  resource_consrestrito.Verificar a label Pesquisa

E verificar o campo: Grupo de Acesso	
  resource_consrestrito.Verificar o campo: Grupo de Acesso

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"