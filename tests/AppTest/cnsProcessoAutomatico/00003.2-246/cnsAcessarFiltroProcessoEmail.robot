*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Email (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Processo de Email (Filtro)
# Email #
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Email
  Quando visualizar a tela: Processo de Email (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Processo de Email (Filtro)
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Email
  resource_mnu.Clicar No Menu Processo | Email

Quando visualizar a tela: Processo de Email (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Email

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Email (Filtro)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Email (Filtro)


