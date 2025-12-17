*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Painel de Controle
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  Ao ver a tela: Área de Risco - Painel de Controle
  E clicar no botão: Editar o registro "1"
  Então devo visualizar a tela: Área de Risco

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

Ao ver a tela: Área de Risco - Painel de Controle
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle

E clicar no botão: Editar o registro "${NUM}"
  resource_btn.Clicar No Botão Editar o registro "${NUM}"

Então devo visualizar a tela: Área de Risco
  resource_cons_tbContrLocalAcess.Acessar Tela Área de Risco
