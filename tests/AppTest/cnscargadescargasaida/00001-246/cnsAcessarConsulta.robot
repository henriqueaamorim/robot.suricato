*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargadescargasaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Veículos Saída (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Veículos Saída (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Então devo visualizar a tela: Movimentação de Veículos Saída (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Então devo visualizar a tela: Movimentação de Veículos Saída (Consulta)
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Consulta)
