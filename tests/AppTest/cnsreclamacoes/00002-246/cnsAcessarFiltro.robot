*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnsreclamacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Reclamações (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Reclamações (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  Quando visualizar a tela: Reclamações (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Reclamações (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Quando visualizar a tela: Reclamações (Consulta)
  resource_cnsreclamacoes.Acessar Tela Consulta de Reclamações

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Reclamações (Filtro)  
  resource_cnsreclamacoes.Acessar Tela Reclamações (Filtro)