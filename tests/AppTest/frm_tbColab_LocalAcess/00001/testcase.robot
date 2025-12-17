*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbColab_LocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Colaborador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  Então devo ver a tela: Área de Risco - Colaborador


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador

Então devo ver a tela: Área de Risco - Colaborador
  resource_frm_tbColab_LocalAcess.Acessar Tela Área de Risco - Colaborador
