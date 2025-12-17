*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_grid.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Log de Aplicação (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Log de Aplicação (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Consulta
  Então devo visualizar a tela: Log de Aplicação (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Consulta
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Consulta

Então devo visualizar a tela: Log de Aplicação (Filtro)
  resource_cns_log_grid.Acessar Tela Log de Aplicação (Filtro)
