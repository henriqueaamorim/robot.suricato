*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmpessoasnaograta.robot
Resource        ../../../../resource/app/resource_consmotivopessoasnaograta.robot
Resource        ../../../../resource/app/resource_conspessoasnaograta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Motivos de Pessoas não Gratas (Busca Externa) através da tela Cadastro de Pessoas não Gratas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata
  E devo visualizar a tela: Consulta de Pessoas não Gratas
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Cadastro de Pessoas não Gratas (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Motivo
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Pessoas não Gratas (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

E devo visualizar a tela: Consulta de Pessoas não Gratas
  resource_conspessoasnaograta.Acessar Tela Consulta de Pessoas não Gratas
  
E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Cadastro de Pessoas não Gratas (Inclusão)
  resource_frmpessoasnaograta.Acessar Tela Cadastro de Pessoas não Gratas (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Motivo
  resource_frmpessoasnaograta.Clicar No Botão Buscar Dados Externos Para Código do Motivo

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Pessoas não Gratas (Busca Externa)
  resource_consmotivopessoasnaograta.Acessar Tela Consulta de Motivos de Pessoas não Gratas (Busca Externa)
