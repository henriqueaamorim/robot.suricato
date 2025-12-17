*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCadastroAndares.robot
Resource        ../../../../resource/app/resource_consAndares.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Andar.


*** Test Cases ***

Testcase: Cadastrar um Andar
  [Tags]  REGISTER  POLYVALENT
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Quando eu visualizar a tela: Consulta de Cadastro de Andares
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Andares
  E clicar no botão: Abrir um novo registro
  E preencher o campo Descrição "Primeiro Andar"
  E preencher o campo Código "3"
  E clicar no botão: Inserir nova linha
  Então devo visualizar a tela: Cadastro de Andares

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Quando eu visualizar a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro
  Sleep  2s

Então devo visualizar a tela: Cadastro de Andares
  resource_frmCadastroAndares.Acessar Tela Cadastro de Andares

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmCadastroAndares.Preencher o campo Descrição "${DESCRICAO}"

E preencher o campo Código "${CODIGO}"
  resource_frmCadastroAndares.Preencher o campo Código "${CODIGO}"

E clicar no botão: Inserir nova linha
    resource_btn.Clicar No Botão Nova Linha