*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnscamercftv.robot
Resource        ../../../../resource/app/resource_frmcamercftv.robot
Resource        ../../../../resource/app/resource_cnscamercolet.robot
Resource        ../../../../resource/app/resource_abaCFTV.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Câmeras X Coletores
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Ao visualizar a tela: Servidor CFTV (Atualização)
  E clicar na aba "Camera CFTV"
  Então devo visualizar a tela: Câmeras CFTV
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Câmeras CFTV (Inclusão)
  E clicar na aba "Cameras X Codin"
  Então devo visualizar a tela: Câmeras X Coletores

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Ao visualizar a tela: Servidor CFTV (Atualização)
  resource_frmservicftv.Acessar Tela Servidor CFTV (Atualização)

E clicar na aba "Camera CFTV"
  resource_abaCFTV.Clicar Na Aba Camera CFTV

Então devo visualizar a tela: Câmeras CFTV
  resource_cnscamercftv.Acessar Tela Câmeras CFTV

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Câmeras CFTV (Inclusão)
  resource_frmcamercftv.Acessar Tela Câmeras CFTV (Inclusão)

E clicar na aba "Cameras X Codin"
  resource_abaCFTV.Clicar Na Aba Cameras X Codin

Então devo visualizar a tela: Câmeras X Coletores
  resource_cnscamercolet.Acessar Tela Câmeras X Coletores
