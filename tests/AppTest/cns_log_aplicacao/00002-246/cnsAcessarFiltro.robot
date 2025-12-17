*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Log de Aplicação (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Log de Aplicação (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  Quando visualizar a tela: Log de Aplicação (Consulta)
  E clicar no botão: Pesquisar Registros 
  Então devo visualizar a tela: Log de Aplicação (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Quando visualizar a tela: Log de Aplicação (Consulta)
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Consulta)

E clicar no botão: Pesquisar Registros 
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Log de Aplicação (Filtro)
   resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Filtro)


