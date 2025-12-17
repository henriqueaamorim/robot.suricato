*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Utilização de Guarda-Volumes (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Utilização de Guarda-Volumes (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo vizualizar a tela: Utilização de Guarda-Volumes (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentacaoGVolumes.Acessar Tela Utilização de Guarda-Volumes (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Utilização de Guarda-Volumes (Filtro)  
    resource_cnsMovimentacaoGVolumes.Acessar Tela: Utilização de Guarda-Volumes (Filtro)