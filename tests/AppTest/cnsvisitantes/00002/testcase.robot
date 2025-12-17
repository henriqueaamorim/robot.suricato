*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMateriaisPessoa.robot
Resource        ../../../../resource/app/resource_cnsvisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Visitantes (Busca Externa) através da tela Cadastro de Materiais por Pessoa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  Ao visualizar a tela: Cadastro de Materiais por Pessoa
  E selecionar a opção "Visitante" no campo Tipo
  E clicar no botão: Buscar Dados Externos para Código do Visitante
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Visitantes - Filtro (Busca Externa)
  Ao clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Visitantes (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

Ao visualizar a tela: Cadastro de Materiais por Pessoa
  resource_ctrMateriaisPessoa.Acessar Tela Cadastro de Materiais por Pessoa

E selecionar a opção "${TIPO}" no campo Tipo
  resource_ctrMateriaisPessoa.Selecionar uma opção no campo Tipo "${TIPO}"

E clicar no botão: Buscar Dados Externos para Código do Visitante
  resource_ctrMateriaisPessoa.Clicar No Botão Buscar Dados Externos Para Código do Visitante

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Visitantes - Filtro (Busca Externa)
  resource_cnsvisitantes.Acessar Tela Consulta de Visitantes - Filtro (Busca Externa)

Ao clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Visitantes (Busca Externa)
  resource_cnsvisitantes.Acessar Tela Consulta de Visitantes (Busca Externa)
