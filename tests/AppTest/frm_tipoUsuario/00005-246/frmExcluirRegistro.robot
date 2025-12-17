
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
  E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  E clicar no campo: Buscar Rapida e pesquisar por "Automação"
  E clicar no botão: Editar o registro    
  E editar o campo: Tipo de Usuário * "Automação"	
  Então devo clicar no botão: Salvar e verificar se o registro foi alterado com sucesso
 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnstipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E visualizar a tela: Formulário de Cadastro de Tipo de Usuário (Edição)
  resource_frm_tipoUsuario.Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)

E clicar no campo: Buscar Rapida e pesquisar por "${BUSCAR}" 
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro  

E editar o campo: Tipo de Usuário * "${TIPO}"
  resource_frm_tipoUsuario.Preencher o campo Tipo de Usuário "${TIPO}"

Então devo clicar no botão: Salvar e verificar se o registro foi alterado com sucesso   
  resource_btn.Clicar No Botão Salvar