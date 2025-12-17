*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: LGPD (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: LGPD (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | LGPD
  Quando visualizar a tela: LGPD (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: LGPD (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configuração | LGPD
  resource_mnu.Clicar No Menu Configurações | LGPD

Quando visualizar a tela: LGPD (Consulta)
  resource_consLGPD.Acessar Tela LGPD

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: LGPD (Filtro)
  resource_consLGPD.Acessar Tela LGPD - Filtro
