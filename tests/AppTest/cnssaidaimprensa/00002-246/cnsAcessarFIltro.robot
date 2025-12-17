*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidaimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Saída de Candidato (FIltro)

*** Test Cases ***
Testcase: Acessar Tela: Saída de Candidato (FIltro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Saída
  Quando visualizar a tela: Saída de Candidato (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Saída de Candidato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Saída
  resource_mnu.Clicar No Menu Entrada | Candidato | Saída

Quando visualizar a tela: Saída de Candidato (Consulta)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Saída de Candidato (Filtro)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Filtro)