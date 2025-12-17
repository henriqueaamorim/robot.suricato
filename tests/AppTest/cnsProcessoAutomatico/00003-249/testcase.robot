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

Testcase: Acessar Tela Processo de Email
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Email
  Quando eu visualizar a tela: Processo Automático - Email
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Processo de Email

*** Keywords ***
Dado que eu acesse o menu: Processo | Email
  resource_mnu.Clicar No Menu Processo | Email

Quando eu visualizar a tela: Processo Automático - Email
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - Email

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Processo de Email
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Email
