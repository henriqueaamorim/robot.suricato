*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbLocal_Acess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Cadastro
  [Tags]  PRINT  POPULATED  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  Então devo ver a tela: Área de Risco - Cadastro


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

Então devo ver a tela: Área de Risco - Cadastro
  resource_frm_tbLocal_Acess.Acessar Tela Área de Risco - Cadastro
