*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLayoutImportacao.robot
Resource        ../../../../resource/app/resource_cnsSecaoLayout.robot
Resource        ../../../../resource/app/resource_frmSecaoLayout.robot
Resource        ../../../../resource/app/resource_cnstabelas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Tabelas (Busca Externa) através da tela Layout de Importação e Exportação - Seção - Inclusão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Arquivo
  Ao visualizar a tela: Layout de Importação e Exportação - Consulta
  E clicar no botão: Seção
  Então devo visualizar a tela: Layout de Importação e Exportação - Seção - Consulta
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Layout de Importação e Exportação - Seção - Inclusão
  Ao clicar no botão: Buscar Dados Externos para Tabela de Destino
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Tabelas (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Arquivo
  resource_mnu.Clicar No Menu Processo | Layout de Arquivo

Ao visualizar a tela: Layout de Importação e Exportação - Consulta
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Consulta

E clicar no botão: Seção
  resource_btn.Clicar No Botão Seção

Então devo visualizar a tela: Layout de Importação e Exportação - Seção - Consulta
  resource_cnsSecaoLayout.Acessar Tela Layout de Importação e Exportação - Seção - Consulta

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Layout de Importação e Exportação - Seção - Inclusão
  resource_frmSecaoLayout.Acessar Tela Layout de Importação e Exportação - Seção - Inclusão

Ao clicar no botão: Buscar Dados Externos para Tabela de Destino
  resource_frmSecaoLayout.Clicar No Botão Buscar Dados Externos Para Tabela de Destino

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Tabelas (Busca Externa)
  resource_cnstabelas.Acessar Tela Consulta de Tabelas (Busca Externa)
