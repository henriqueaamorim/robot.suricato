*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Consulta de Cadastro de Candidato 

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Cadastro de Candidato
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
    Dado que eu acesse o menu: Identificação | Candidato | Candidato
    Então devo visualizar a tela: Consulta de Cadastro de Candidato

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Candidato
    resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Então devo visualizar a tela: Consulta de Cadastro de Candidato
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato
    
    



