*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot
Resource        ../../../../resource/app/resource_cnsHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Históricos de Perfil (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Históricos de Perfil (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Quando eu visualizar a tela: Histórico de Perfil (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Perfil (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Quando eu visualizar a tela: Histórico de Perfil (Consulta)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Perfil (Filtro)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Filtro)
