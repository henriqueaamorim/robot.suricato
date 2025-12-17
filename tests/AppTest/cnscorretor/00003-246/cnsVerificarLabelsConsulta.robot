*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_cnscorretor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Corretor (Consulta)
${SCREENNAME}  Corretor
${APPNAME}     cnscorretor

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Corretor (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  Quando visualizar a tela: Corretor (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Quando visualizar a tela: Corretor (Consulta)
  resource_cnscorretor.Acessar Tela Consulta Corretor

Então devo verificar a label: Código
  resource_cnscorretor.Verificar a label Código

E verificar a label: Nome
  resource_cnscorretor.Verificar a label Nome 

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  