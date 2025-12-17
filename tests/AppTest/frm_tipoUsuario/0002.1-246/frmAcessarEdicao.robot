*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tipoUsuario.robot
Resource        ../../../../resource/app/resource_cnstipoUsuario.robot
Resource    ../../../IssuesTest/12037/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Edição)


*** Test Cases ***
Testcase: Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnstipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  resource_frm_tipoUsuario.Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)
