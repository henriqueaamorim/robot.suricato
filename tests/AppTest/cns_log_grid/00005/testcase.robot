*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_grid.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Log de Aplicação (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Consulta
  Então devo visualizar a tela: Log de Aplicação (Filtro)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Log de Aplicação

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Consulta
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Consulta

Então devo visualizar a tela: Log de Aplicação (Filtro)
  resource_cns_log_grid.Acessar Tela Log de Aplicação (Filtro)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Log de Aplicação
  resource_cns_log_grid.Acessar Tela Log de Aplicação