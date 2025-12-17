*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocahorario.robot
Resource        ../../../../resource/app/resource_cnstrocahorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Programação - Troca de Horário (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Programação - Troca de Horário (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  Então devo visualizar a tela: Programação - Troca de Horário (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário
  
Então devo visualizar a tela: Programação - Troca de Horário (Consulta)
  resource_cnstrocahorario.Acessar Tela Consulta de Troca de Horários


