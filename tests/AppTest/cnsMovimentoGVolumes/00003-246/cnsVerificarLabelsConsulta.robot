*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentoGVolumes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Relatório de Utilização de Guarda-Volumes
${APPNAME}     cnsMovimentoGVolumes
${OBJETIVO}    Verificar todas a labels na tela: Relatório de Utilização de Guarda-Volumes (Consulta)

*** Test Cases ***
Testcase: Verificar todas a labels na tela: Relatório de Utilização de Guarda-Volumes (Consulta)
  [Tags]  VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  Quando visualizar a tela: Relatório de Utilização de Guarda-Volumes (Consulta)
  Então devo verificar a label: Guarda-Volumes
  E verificar a label: Tipo      
  E verificar a label: Colaborador/Visitante    
  E verificar a label: Data Utilização  
  E verificar a label: Hora Utilização   
  E verificar a label: Data Liberação  
  E verificar a label: Hora Liberação 
  E verificar a label: Observação
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes

Quando visualizar a tela: Relatório de Utilização de Guarda-Volumes (Consulta)
    resource_cnsMovimentoGVolumes.Acessar Tela Relatório de Utilização de Guarda-Volumes

Então devo verificar a label: Guarda-Volumes
    resource_cnsMovimentoGVolumes.Verificar a label: Guarda-Volumes

E verificar a label: Tipo      
    resource_cnsMovimentoGVolumes.Verificar a label: Tipo

E verificar a label: Colaborador/Visitante    
    resource_cnsMovimentoGVolumes.Verificar a label: Colaborador/Visitante

E verificar a label: Data Utilização  
    resource_cnsMovimentoGVolumes.Verificar a label: Data Utilização

E verificar a label: Hora Utilização   
    resource_cnsMovimentoGVolumes.Verificar a label: Hora Utilização

E verificar a label: Data Liberação  
    resource_cnsMovimentoGVolumes.Verificar a label: Data Liberação

E verificar a label: Hora Liberação 
    resource_cnsMovimentoGVolumes.Verificar a label: Hora Liberação

E verificar a label: Observação
    resource_cnsMovimentoGVolumes.Verificar a label: Observação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"