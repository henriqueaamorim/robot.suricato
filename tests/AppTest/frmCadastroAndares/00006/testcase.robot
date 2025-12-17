*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCadastroAndares.robot
Resource        ../../../../resource/app/resource_consAndares.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cadastro de Andares
${APPNAME}     frmCadastroAndares
${OBJETIVO}    Verificar todos os campos na tela Cadastro de Andares


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Andares
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Quando eu visualizar a tela: Consulta de Cadastro de Andares
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Andares
  E verificar a label Código
  E verificar a label Descrição
  E verificar a segunda label Código
  E clicar no botão: Abrir um novo registro
  E verificar o campo Código 
  E verificar o campo Descrição
  E verificar o segundo campo Código
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Quando eu visualizar a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Andares
  resource_frmCadastroAndares.Acessar Tela Cadastro de Andares

E verificar a label Código
  resource_frmCadastroAndares.Verificar a label Código

E verificar a label Descrição
  resource_frmCadastroAndares.Verificar a label Descrição

E verificar a segunda label Código
  resource_frmCadastroAndares.Verificar a segunda label Código

E verificar o campo Código 
  resource_frmCadastroAndares.Verificar o campo Código 

E verificar o campo Descrição
  resource_frmCadastroAndares.Verificar o campo Descrição

E verificar o segundo campo Código
  resource_frmCadastroAndares.Verificar o segundo campo Código

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
