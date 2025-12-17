*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot
Resource        ../../../../resource/app/resource_cnscargadescargaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Veículos Entrada (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Veículos Entrada (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Então devo visualizar a tela: Movimentação de Veículos Entrada (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Então devo visualizar a tela: Movimentação de Veículos Entrada (Consulta)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Consulta)

