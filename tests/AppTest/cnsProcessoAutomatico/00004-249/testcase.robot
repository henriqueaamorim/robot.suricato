*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Processo On-Line
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | On-Line
  Quando eu visualizar a tela: Processo Automático - On-Line
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Processo On-Line

*** Keywords ***
Dado que eu acesse o menu: Processo | On-Line
  resource_mnu.Clicar No Menu Processo | OnLine

Quando eu visualizar a tela: Processo Automático - On-Line
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - On-Line

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Processo On-Line
  resource_cnsProcessoAutomatico.Acessar Tela Processo On-Line
