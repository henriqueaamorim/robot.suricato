*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tipoUsuario.robot
Resource        ../../../../resource/app/resource_cnstipoUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)


*** Test Cases ***
Testcase: Acessar Tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)
 


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnstipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Inclusão)
  resource_frm_tipoUsuario.Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)
