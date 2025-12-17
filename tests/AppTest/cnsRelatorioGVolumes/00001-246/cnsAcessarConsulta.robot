*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Relatório de Guarda-Volumes (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Relatório de Guarda-Volumes (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  Então devo visualizar a tela: Relatório de Guarda-Volumes (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

Então devo visualizar a tela: Relatório de Guarda-Volumes (Consulta)
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes
