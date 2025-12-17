*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consferiado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Feriado (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Feriado (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Quando ver a tela: Feriado (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Feriado (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Quando ver a tela: Feriado (Consulta)
  resource_consferiado.Acessar Tela Consulta de Feriados

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Feriado (Filtro)
  resource_consferiado.Acessar Tela Consulta de Feriados (Filtro)