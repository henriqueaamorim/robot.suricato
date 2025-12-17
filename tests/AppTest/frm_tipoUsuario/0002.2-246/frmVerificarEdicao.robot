*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tipoUsuario.robot
Resource        ../../../../resource/app/resource_cnstipoUsuario.robot
Resource    ../../../IssuesTest/12037/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Edição)
${SCREENNAME}   Formulário de Cadastro de Tipo de Usuário
${APPNAME}      frm_tipoUsuario

*** Test Cases ***
Testcase: Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Editar o registro
  E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  Então devo verificar o campo: Cód. Tipo	
  E verificar o campo: Tipo de Usuário *
  E verificar se existe o campo Teste na tela
 

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnstipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  resource_frm_tipoUsuario.Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)

Então devo verificar o campo: Cód. Tipo	
  resource_frm_tipoUsuario.E verificar o campo Cód Tipo

E verificar o campo: Tipo de Usuário *	  
  resource_frm_tipoUsuario.E verificar o campo Tipo de Usuário

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  