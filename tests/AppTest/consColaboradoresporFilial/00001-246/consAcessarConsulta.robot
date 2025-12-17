*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consColaboradores.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Empregado (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Empregado (Consulta)
  [Tags]  PRINT  POPULATED   246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Então devo visualizar a tela: Empregado (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Então devo visualizar a tela: Empregado (Consulta)
  resource_conscolaboradores.Acessar Tela: Empregado (Consulta)

