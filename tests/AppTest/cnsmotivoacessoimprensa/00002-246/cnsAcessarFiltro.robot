*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Motivo de Acesso de Candidato (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Motivo de Acesso de Candidato (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Motivo de Acesso de Candidato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Motivo de Acesso

Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Motivo de Acesso de Candidato (Filtro)  
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Filtro)
