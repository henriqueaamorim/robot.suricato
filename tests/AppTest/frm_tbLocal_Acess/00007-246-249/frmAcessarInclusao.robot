*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbLocal_Acess.robot
Resource        ../../../../resource/app/resource_frm_tbLocal_Acess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Consulta
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  Então devo ver a tela: Área de Risco - Consulta
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Área de Risco - Cadastro


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Area de Risco

Então devo ver a tela: Área de Risco - Consulta
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Consulta

E clicar no botão: Abrir um novo registro
    resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Área de Risco - Cadastro
    resource_frm_tbLocal_Acess.Acessar Tela Área de Risco - Cadastro