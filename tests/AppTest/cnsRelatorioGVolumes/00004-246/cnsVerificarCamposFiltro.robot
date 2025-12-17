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
${OBJETIVO}    Verificar todos os campos na tela Relatório de Guarda-Volumes (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Relatório de Guarda-Volumes (Filtro)
  [Tags]  VERIFY   246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  Quando visualizar a tela: Relatório de Guarda-Volumes
  E clicar no botão Pesquisar Registros
  Então devo visualizar a tela: Relatório de Guarda-Volumes - Filtro
  E verificar o campo Número do Guarda-Volumes 
  E verificar o campo Descrição do Guarda-Volumes  
  E verificar se existe o campo Teste 

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

Quando visualizar a tela: Relatório de Guarda-Volumes
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes

E clicar no botão Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Relatório de Guarda-Volumes - Filtro
  resource_cnsRelatorioGVolumes.Acessar Tela Relatório de Guarda-Volumes - Filtro

E verificar o campo Número do Guarda-Volumes 
  resource_cnsRelatorioGVolumes.E verificar o campo Número do Guarda-Volumes 

E verificar o campo Descrição do Guarda-Volumes
  resource_cnsRelatorioGVolumes.E verificar o campo Descrição do Guarda-Volumes

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"