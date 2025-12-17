*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Motivos de Uso da Frota (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Motivos de Uso da Frota (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  Então devo visualizar a tela: Motivos de Uso da Frota (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Então devo visualizar a tela: Motivos de Uso da Frota (Consulta)
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota
