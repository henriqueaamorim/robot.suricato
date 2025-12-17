*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Escala (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Escala (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  Quando visualizar a tela: Escala (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Escala (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Quando visualizar a tela: Escala (Consulta)
  resource_consescalacad.Acessar Tela Consulta de Escalas

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Escala (Filtro)
  resource_consescalacad.Acessar Tela Consulta de Escalas (Filtro)