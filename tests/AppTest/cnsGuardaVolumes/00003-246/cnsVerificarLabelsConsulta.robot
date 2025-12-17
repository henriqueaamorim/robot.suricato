*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGuardaVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Guarda-Volume (Consulta)
${SCREENNAME}  Guarda-Volume 
${APPNAME}     cnsGuardaVolumes

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Guarda-Volume (Consulta)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  Quando visualizar a tela: Guarda-Volume (Consulta)
  Então devo verificar a label: Número do Guarda-Volumes
  E verificar a label: Descrição do Guarda-Volumes
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Quando visualizar a tela: Guarda-Volume (Consulta)
  resource_cnsGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Consulta)

Então devo verificar a label: Número do Guarda-Volumes
    resource_cnsGuardaVolumes.Verificar a label: Número do Guarda-Volumes

E verificar a label: Descrição do Guarda-Volumes
    resource_cnsGuardaVolumes.Verificar a label: Descrição do Guarda-Volumes

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"