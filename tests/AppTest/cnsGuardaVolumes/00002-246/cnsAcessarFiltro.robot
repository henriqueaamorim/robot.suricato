*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGuardaVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Guarda-Volume (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Guarda-Volume (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  Quando visualizar a tela: Guarda-Volume (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Guarda-Volume (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Quando visualizar a tela: Guarda-Volume (Consulta)
  resource_cnsGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Guarda-Volume (Filtro)  
    resource_cnsGuardaVolumes.Acessar Tela:Guarda-Volume (Filtro)