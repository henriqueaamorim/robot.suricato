*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioGVolumes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Relatório de Guarda-Volumes
${APPNAME}     cnsRelatorioGVolumes
${OBJETIVO}    Verificar todas as labels na tela Relatório de Guarda-Volumes (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela Relatório de Guarda-Volumes (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  Quando visualizar a tela: Relatório de Guarda-Volumes (Consulta)
  Então devo verificar a label: Número do Guarda-Volumes 
  E verificar o a label: Descrição do Guarda-Volumes  
  E verificar se existe o campo Teste 

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

Quando visualizar a tela: Relatório de Guarda-Volumes (Consulta)
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes

Então devo verificar a label: Número do Guarda-Volumes 
  resource_cnsRelatorioGVolumes.Verificar a label: Número do Guarda-Volumes

E verificar o a label: Descrição do Guarda-Volumes 
  resource_cnsRelatorioGVolumes.Verificar a label: Descrição do Guarda-Volumes

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"