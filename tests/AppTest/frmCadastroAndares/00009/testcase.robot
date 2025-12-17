*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot
Resource        ../../../../resource/app/resource_frmCadastroTorres.robot
Resource        ../../../../resource/app/resource_frmCadastroAndares.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Torre.


*** Test Cases ***

Testcase: Cadastrar uma Torre
  [Tags]  REGISTER 246  
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Ao ver a tela: Consulta de Cadastro de Torres
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Torres (Inclusão)
  E preencher o campo Descrição "Torre A"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Cadastro de Torres (Inclusão)
  E clicar na aba Andar
  E clicar em Abrir um Novo Registro
  Então devo preencher o campo Descrição "DESCANDAR"
  E clicar em inserir nova linha 
  Clicar No Botão Gravar o Registro
  Então Devo Visualizar a Tela Cadastro de Torres (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Ao ver a tela: Consulta de Cadastro de Torres
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Torres (Inclusão)
  resource_frmCadastroTorres.Acessar Tela Cadastro de Torres (Inclusão)

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmCadastroTorres.Preencher o campo Descrição "${DESCRICAO}"

Então devo preencher o campo Descrição "${DESCRICAO}"
  sleep  2s
  resource_frmCadastroAndares.Preencher o campo Descrição "${DESCRICAO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

E clicar na aba Andar
  sleep  2s
  resource_frmCadastroAndares.Clicar na aba Andar

E clicar em Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E clicar em inserir nova linha 
  sleep  2s
  resource_btn.Clicar No Botão Inserir Nova Linha

Clicar No Botão Gravar o Registro
  Mudar Frame Aplicação "mnu_iframe"
  resource_btn.Clicar No Botão Gravar o Registro

Então Devo Visualizar a Tela Cadastro de Torres (Atualização)
  resource_frmCadastroTorres.Acessar Tela Cadastro de Torres (Atualização)