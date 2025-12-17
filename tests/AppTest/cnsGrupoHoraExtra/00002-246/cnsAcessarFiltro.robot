*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoHoraExtra.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Hora Extra (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Hora Extra (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Hora Extra
  Quando eu visualizar a tela: Grupo de Hora Extra (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo de Hora Extra (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configuração | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Quando eu visualizar a tela: Grupo de Hora Extra (Consulta)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Grupo de Hora Extra (Filtro)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra - Filtro
