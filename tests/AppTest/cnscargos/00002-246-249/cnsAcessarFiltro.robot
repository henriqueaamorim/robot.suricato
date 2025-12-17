*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar tela: Cargos (Filtro)


*** Test Cases ***
Testcase: Acessar tela: Cargos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  Quando visualizar a tela: Cargos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Cargos (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Cargo

Quando visualizar a tela: Cargos (Consulta)
  resource_cnscargos.Acessar Tela Consulta de Cargos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Cargos (Filtro)
  resource_cnscargos.Acessar Tela Consulta de Cargos (Filtro)