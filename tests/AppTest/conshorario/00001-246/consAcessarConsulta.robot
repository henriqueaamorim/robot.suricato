*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conshorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Horário de Escala (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Horário de Escala (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  Então devo ver a tela: Horário de Escala (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

Então devo ver a tela: Horário de Escala (Consulta)
  resource_conshorario.Acessar Tela Consulta de Horários
