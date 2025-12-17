*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Utilização de Guarda-Volumes (Consulta)
${SCREENNAME}  Utilização de Guarda-Volumes
${APPNAME}     cnsMovimentacaoGVolumes


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Utilização de Guarda-Volumes (Consulta)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  Então devo verificar a label: Guarda-Volumes
  E verificar a label: Tipo
  E verificar a label: Colaborador/Visitante
  E verificar a label: Data Utilização
  E verificar a label: Hora Utilização
  E verificar a label: Data Liberação
  E verificar a label: Hora Liberação
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentacaoGVolumes.Acessar Tela Utilização de Guarda-Volumes (Consulta)

Então devo verificar a label: Guarda-Volumes
    resource_cnsMovimentacaoGVolumes.Verificar a label: Guarda-Volumes

E verificar a label: Tipo
    resource_cnsMovimentacaoGVolumes.Verificar a label: Tipo

E verificar a label: Colaborador/Visitante
    resource_cnsMovimentacaoGVolumes.Verificar a label: Colaborador/Visitante

E verificar a label: Data Utilização
    resource_cnsMovimentacaoGVolumes.Verificar a label: Data Utilização

E verificar a label: Hora Utilização
    resource_cnsMovimentacaoGVolumes.Verificar a label: Hora Utilização

E verificar a label: Data Liberação
    resource_cnsMovimentacaoGVolumes.Verificar a label: Data Liberação

E verificar a label: Hora Liberação
    resource_cnsMovimentacaoGVolumes.Verificar a label: Hora Liberação

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"