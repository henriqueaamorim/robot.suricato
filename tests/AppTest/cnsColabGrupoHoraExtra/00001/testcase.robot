*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot
Resource        ../../../../resource/app/resource_cnsColabGrupoHoraExtra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Colaboradores por Grupo - Hora Extra
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Hora Extra
  Então devo visualizar a tela: Hora Extra
  Ao clicar no botão: Cadastro
  Então devo visualizar a tela: Colaboradores por Grupo - Hora Extra


*** Keywords ***
Dado que eu acesse o menu: Configurações | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Então devo visualizar a tela: Hora Extra
  resource_frm_tbhoraextra.Acessar Tela Hora Extra

Ao clicar no botão: Cadastro
  resource_btn.Clicar No Botão Cadastro

Então devo visualizar a tela: Colaboradores por Grupo - Hora Extra
  resource_cnsColabGrupoHoraExtra.Acessar Tela Colaboradores por Grupo - Hora Extra
