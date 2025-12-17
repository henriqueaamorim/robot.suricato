*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Acessar Tela: Monitorar Alarmes (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Monitorar Alarmes (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Então devo visualizar a tela: Monitorar Alarmes (Consulta)
  E clicar no botão: Pesquisar Registros
  Então eu devo visualizar a tela: Monitorar Alarmes (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Então devo visualizar a tela: Monitorar Alarmes (Consulta)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então eu devo visualizar a tela: Monitorar Alarmes (Filtro)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes (Filtro)