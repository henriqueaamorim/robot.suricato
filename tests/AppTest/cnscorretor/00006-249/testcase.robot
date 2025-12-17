*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_cnscorretor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Corretor
${APPNAME}     cnscorretor
${OBJETIVO}    Verificar todos os campos na tela Consulta Corretor.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Corretor
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  Quando eu visualizar a tela: Corretor (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Corretor
  E verificar a label Código
  E verificar a label Nome 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Quando eu visualizar a tela: Corretor (Inclusão)
  resource_frmcorretor.Acessar Tela Corretor (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Corretor
  resource_cnscorretor.Acessar Tela Consulta Corretor

E verificar a label Código
  resource_cnscorretor.Verificar a label Código

E verificar a label Nome 
  resource_cnscorretor.Verificar a label Nome 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
