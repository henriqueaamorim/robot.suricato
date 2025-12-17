*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoHoraExtra.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Hora Extra (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Hora Extra (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Hora Extra
  Então devo visualizar a tela: Grupo de Hora Extra (Consulta)
  

*** Keywords ***
Dado que eu acesse o menu: Configuração | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Então devo visualizar a tela: Grupo de Hora Extra (Consulta)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra

