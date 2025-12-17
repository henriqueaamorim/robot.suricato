*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Motivo de Acesso de Candidato (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Motivo de Acesso de Candidato (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  Então devo visualizar a tela: Motivo de Acesso de Candidato (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Motivo de Acesso

Então devo visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Consulta)

