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
${OBJETIVO}    Verificar todos os campos na tela: Relatório de Utilização de Guarda-Volumes (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Relatório de Utilização de Guarda-Volumes (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  Quando visualizar a tela: Relatório de Utilização de Guarda-Volumes (Consulta)
  E clicar no botão Pesquisar Registros
  Então devo visualizar a tela: Relatório de Utilização de Guarda-Volumes (Filtro) 
  E verificar o campo Guarda-Volumes 
  E verificar o campo Tipo          
  E verificar o campo Data Utilização  
  E verificar o campo Hora Utilização   
  E verificar o campo Data Liberação  
  E verificar o campo Hora Liberação 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes

Quando visualizar a tela: Relatório de Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentoGVolumes.Acessar Tela Relatório de Utilização de Guarda-Volumes

E clicar no botão Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Relatório de Utilização de Guarda-Volumes (Filtro) 
  resource_cnsMovimentoGVolumes.Acessar Tela Relatório de Utilização de Guarda-Volumes - Filtro

E verificar o campo Guarda-Volumes 
  resource_cnsMovimentoGVolumes.E verificar o campo Guarda-Volumes 

E verificar o campo Tipo          
  resource_cnsMovimentoGVolumes.E verificar o campo Tipo          

E verificar o campo Data Utilização  
  resource_cnsMovimentoGVolumes.E verificar o campo Data Utilização  

E verificar o campo Hora Utilização   
  resource_cnsMovimentoGVolumes.E verificar o campo Hora Utilização   

E verificar o campo Data Liberação  
  resource_cnsMovimentoGVolumes.E verificar o campo Data Liberação  

E verificar o campo Hora Liberação 
  resource_cnsMovimentoGVolumes.E verificar o campo Hora Liberação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"