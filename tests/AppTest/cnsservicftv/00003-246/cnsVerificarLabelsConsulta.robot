*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnsservicftv.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Servidor CFTV - Modo Busca (Consulta)
${SCREENNAME}  CFTV
${APPNAME}     cnsservicftv

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Servidor CFTV - Modo Busca (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Quando visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Endereço IP
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Quando visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca

Então devo verificar a label: Código
  resource_cnsservicftv.Verificar a label Código

E verificar a label: Endereço IP
  resource_cnsservicftv.Verificar a label Endereço IP

E verificar a label: Nome
  resource_cnsservicftv.Verificar a label Nome

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"