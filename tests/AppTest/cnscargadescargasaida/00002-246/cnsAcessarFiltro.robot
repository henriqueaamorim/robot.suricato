*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargadescargasaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Veículos Saída (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Veículos Saída (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Movimentação de Veículos Saída (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Movimentação de Veículos Saída (Filtro)
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Filtro)
