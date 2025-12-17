*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstacionamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar tela: Consulta de Estacionamento (Filtro)

*** Test Cases ***
Testcase: Acessar tela: Consulta de Estacionamento (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento
  Quando ver a tela: Consulta de Estacionamento 
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Consulta de Estacionamento (Filtro)



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento
  resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

Quando ver a tela: Consulta de Estacionamento 
  resource_cnsEstacionamento.Acessar Tela Consulta de Estacionamento

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Estacionamento (Filtro)
  resource_cnsEstacionamento.Acessar Tela Consulta de Estacionamento (Filtro)