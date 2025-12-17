*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Email (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Processo de Email (Consulta)
# Email #
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Email
  Então devo visualizar a tela: Processo de Email (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Email
  resource_mnu.Clicar No Menu Processo | Email

Então devo visualizar a tela: Processo de Email (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Email


