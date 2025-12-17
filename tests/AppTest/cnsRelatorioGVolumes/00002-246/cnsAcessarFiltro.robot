*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Relatório de Guarda-Volumes (Filtro)

*** Test Cases ***
Testcase: Acessar Tela Relatório de Guarda-Volumes (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  Quando visualizar a tela: Relatório de Guarda-Volumes (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Relatório de Guarda-Volumes (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

Quando visualizar a tela: Relatório de Guarda-Volumes (Consulta)
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Relatório de Guarda-Volumes (Filtro)
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes - Filtro
