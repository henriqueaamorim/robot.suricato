*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessoriosveiculo.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsacessorios_cap.robot
Resource        ../../../../resource/app/resource_abacadastroveiculo.robot
Resource    ../../cnsMovimentoGVolumes/00003/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta Acessórios - Modo Busca (Busca Externa) através da tela de Acessórios (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar na aba: Acessórios
  Então devo visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Abrir um Novo Registro
  E clicar no botão: Buscar Dados Externos para Código do Acessório
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Acessórios (Busca Externa)
  E clicar no botão Pesquisar Registros
  Então devo visualizar a tela Consulta Acessórios - Modo Busca 

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculocompleto_cad.Acessar Tela Cadastro Veículos - Atualização

E clicar na aba: Acessórios
  resource_abacadastroveiculo.Clicar Na Aba Acessórios

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessoriosveiculo.Acessar Tela Acessórios (Atualização)

E clicar no botão: Buscar Dados Externos para Código do Acessório
  resource_frmacessoriosveiculo.Clicar No Botão Buscar Dados Externos Para Código do Acessório

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Acessórios (Busca Externa)
  resource_cnsacessorios_cap.Acessar Tela Consulta Acessórios (Busca Externa)

E clicar no botão: Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E clicar no botão Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros
Então devo visualizar a tela Consulta Acessórios - Modo Busca 
  resource_cnsacessorios_cap.Acessar Tela Consulta Acessórios - Modo Busca (Busca Externa)