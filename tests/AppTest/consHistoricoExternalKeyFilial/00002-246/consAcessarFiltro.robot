*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consHistoricoExternalKeyFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Codin por Filial (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Codin por Filial (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Codin por Filial (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Codin por Filial (Filtro)  
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial - Filtro