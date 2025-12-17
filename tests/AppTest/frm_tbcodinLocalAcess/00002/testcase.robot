*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbcodinLocalAcess.robot
Resource    ../../../../resource/app/resource_frmestruturaorganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir uma Área de Risco - Codin.


*** Test Cases ***

Testcase: Excluir uma Área de Risco - Codin
  [Tags]  DELETE
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  Então devo ver a tela: Área de Risco - Codin
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo ver a tela: Área de Risco - Codin
    
*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

Então devo ver a tela: Área de Risco - Codin
  resource_frm_tbcodinLocalAcess.Acessar Tela Área de Risco - Codin

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert