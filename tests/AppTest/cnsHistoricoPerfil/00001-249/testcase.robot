*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot
Resource        ../../../../resource/app/resource_cnsHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Históricos de Perfil 

*** Test Cases ***
Testcase: Acessar Tela: Históricos de Perfil
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Quando eu visualizar a tela: Histórico de Perfil (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Históricos de Perfil

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Quando eu visualizar a tela: Histórico de Perfil (Atualização)
  resource_frmHistoricoPerfil.Acessar Tela Histórico de Perfil (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Históricos de Perfil
  resource_cnsHistoricoPerfil.Acessar Tela Históricos de Perfil
