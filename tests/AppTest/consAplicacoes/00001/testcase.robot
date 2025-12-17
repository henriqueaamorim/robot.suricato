*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot
Resource        ../../../../resource/app/resource_consAplicacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Aplicações Suricato (Busca Externa) através da tela Formulário de Campos Customizáveis - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Campos Customizáveis
  Quando eu visualizar a tela: Formulário de Campos Customizáveis
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Campos não Customizaveis
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Formulário de Campos Customizáveis - Cadastro
  E clicar no botão: Buscar Dados Externos Para Aplicação
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Aplicações Suricato (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Configurações | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Quando eu visualizar a tela: Formulário de Campos Customizáveis
  resource_frmCamposCustomizaveis.Acessar Tela Formulário de Campos Customizáveis

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Campos não Customizaveis
  resource_consPesquisaCamposCustom.Acessar Tela Consulta de Campos não Customizaveis

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Formulário de Campos Customizáveis - Cadastro
  resource_frmCamposCustomizaveis.Acessar Tela Formulário de Campos Customizáveis - Cadastro

E clicar no botão: Buscar Dados Externos Para Aplicação
  resource_frmCamposCustomizaveis.Clicar No Botão Buscar Dados Externos Para Aplicação

Então o navegador deve exibir uma nova janela e eu visualizar a tela Aplicações Suricato (Busca Externa)
  resource_consAplicacoes.Acessar Tela Aplicações Suricato (Busca Externa)
