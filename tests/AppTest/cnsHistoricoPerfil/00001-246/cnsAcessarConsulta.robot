*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot
Resource        ../../../../resource/app/resource_cnsHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Históricos de Perfil (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Históricos de Perfil (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Então devo visualizar a tela: Histórico de Perfil (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Então devo visualizar a tela: Histórico de Perfil (Consulta)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Consulta)


