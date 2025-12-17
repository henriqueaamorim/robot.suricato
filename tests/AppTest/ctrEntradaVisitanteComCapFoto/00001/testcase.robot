*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEntradaVisitanteComCapFoto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Entrada de Visitante
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  Então devo visualizar a tela: Entrada de Visitante

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

Então devo visualizar a tela: Entrada de Visitante
  resource_ctrEntradaVisitanteComCapFoto.Acessar Tela Entrada de Visitante
