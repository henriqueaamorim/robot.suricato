*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmvisitantecorp.robot
Resource        ../../../../resource/app/resource_consoutraempresa.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot

Test Setup      Acessar Suricato 
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Empresas Terceiras (Busca Externa) através da tela Cadastro de Visitantes (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Cadastro de Visitante
  Então devo visualizar a tela: Consulta de Visitantes
  E clicar no botão: Abrir um Novo Registro
  E clicar no botão: Buscar Dados Externos para Empresa Terceira
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas Terceiras (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Cadastro de Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Então devo visualizar a tela: Consulta de Visitantes
  resource_consvisitantecorpcad.Acessar Tela Consulta de Visitantes

E clicar no botão: Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E clicar no botão: Buscar Dados Externos para Empresa Terceira
  resource_frmvisitantecorp.Clicar No Botão Buscar Dados Externos Para Empresa Terceira

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas Terceiras (Busca Externa)
  resource_consoutraempresa.Acessar Tela Consulta de Empresas Terceiras (Busca Externa)
