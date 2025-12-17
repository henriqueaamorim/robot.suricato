*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: LGPD (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: LGPD (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | LGPD
  Então devo visualizar a tela: LGPD (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Configuração | LGPD
  resource_mnu.Clicar No Menu Configurações | LGPD

Então devo visualizar a tela: LGPD (Consulta)
  resource_consLGPD.Acessar Tela LGPD
