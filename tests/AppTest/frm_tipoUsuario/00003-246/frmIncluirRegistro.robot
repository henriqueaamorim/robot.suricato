*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tipoUsuario.robot
Resource        ../../../../resource/app/resource_cnstipoUsuario.robot
Resource    ../../../IssuesTest/12037/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Cadastrar um novo Tipo de Usuário


*** Test Cases ***
Testcase: Cadastrar um novo Tipo de Usuário
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)
  E preencher o campo: Tipo de Usuário *	
  Então devo clicar no botão: Incluir o registro e verificar se o registro foi incluido com sucesso
 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnstipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)
  resource_frm_tipoUsuario.Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)

E preencher o campo: Tipo de Usuário *	
  resource_frm_tipoUsuario.Preencher o campo Tipo de Usuário "$TIPO"

Então devo clicar no botão: Incluir o registro e verificar se o registro foi incluido com sucesso  
  resource_btn.Clicar no Botão Incluir o Registro