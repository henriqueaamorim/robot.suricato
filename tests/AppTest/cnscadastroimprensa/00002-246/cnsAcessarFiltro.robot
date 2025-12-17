*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consulta de Cadastro de Candidato (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Cadastro de Candidato (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
    Dado que eu acesse o menu: Identificação | Candidato | Candidato
    Quando visualizar a tela: Consulta de Cadastro de Candidato
    E clicar no botão: Pesquisar registro
    Então devo visualizar a tela: Consulta de Cadastro de Candidato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Candidato
    resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Quando visualizar a tela: Consulta de Cadastro de Candidato
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Cadastro de Candidato (Filtro)    
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato (Filtro)
    



