*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnscamercftv.robot
Resource        ../../../../resource/app/resource_abaCFTV.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Câmeras CFTV
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Ao visualizar a tela: Servidor CFTV (Atualização)
  E clicar na aba "Camera CFTV"
  Então devo visualizar a tela: Câmeras CFTV

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Ao visualizar a tela: Servidor CFTV (Atualização)
  resource_frmservicftv.Acessar Tela Servidor CFTV (Atualização)

E clicar na aba "Camera CFTV"
  resource_abaCFTV.Clicar Na Aba Camera CFTV

Então devo visualizar a tela: Câmeras CFTV
  resource_cnscamercftv.Acessar Tela Câmeras CFTV
