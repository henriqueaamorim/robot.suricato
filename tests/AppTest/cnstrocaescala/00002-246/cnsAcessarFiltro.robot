*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocaescala.robot
Resource        ../../../../resource/app/resource_cnstrocaescala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Programação - Troca de Escala (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Programação - Troca de Escala (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Programação - Troca de Escala (Filtro)
 
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  resource_cnstrocaescala.Acessar Tela: Programação - Troca de Escala (Consulta)

E clicar no botão: Pesquisar Registros  
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Programação - Troca de Escala (Filtro)
  resource_cnstrocaescala.Acessar Tela: Programação - Troca de Escala (Filtro)

