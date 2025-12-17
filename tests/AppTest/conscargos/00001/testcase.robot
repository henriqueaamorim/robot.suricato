*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditoscoletivos.robot
Resource        ../../../../resource/app/resource_ctrselecaocreditoscoletivos.robot
Resource        ../../../../resource/app/resource_conscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Cargos (Busca Externa) através da tela Créditos de Acesso Coletivos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência
  Ao clicar no botão: Buscar Dados Externos para Cargo
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Cargos (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  resource_ctrcreditoscoletivos.Acessar Tela Créditos de Acesso Coletivos (Atualização)

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrselecaocreditoscoletivos.Acessar Tela Abrangência

Ao clicar no botão: Buscar Dados Externos para Cargo
  resource_ctrselecaocreditoscoletivos.Clicar No Botão Buscar Dados Externos Para Cargo

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Cargos (Busca Externa)
  resource_conscargos.Acessar Tela Consulta de Cargos (Busca Externa)
