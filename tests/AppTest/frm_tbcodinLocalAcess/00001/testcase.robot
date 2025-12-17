*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbcodinLocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Codin
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  Então devo ver a tela: Área de Risco - Codin


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

Então devo ver a tela: Área de Risco - Codin
  resource_frm_tbcodinLocalAcess.Acessar Tela Área de Risco - Codin
