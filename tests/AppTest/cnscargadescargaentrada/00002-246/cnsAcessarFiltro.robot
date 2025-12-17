*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot
Resource        ../../../../resource/app/resource_cnscargadescargaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Veículos Entrada (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Veículos Entrada (Filtro)
  [Tags]  PRINT  POPULATED   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Quando eu visualizar a tela: Movimentação de Veículos Entrada (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Movimentação de Veículos Entrada (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Quando eu visualizar a tela: Movimentação de Veículos Entrada (Consulta)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Movimentação de Veículos Entrada (Filtro)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Filtro)
