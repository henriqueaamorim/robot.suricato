*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnsservicftv.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Servidor CFTV - Modo Busca (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Servidor CFTV - Modo Busca (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Quando eu visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Servidor CFTV - Modo Busca (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Quando eu visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Servidor CFTV - Modo Busca (Filtro)
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca
