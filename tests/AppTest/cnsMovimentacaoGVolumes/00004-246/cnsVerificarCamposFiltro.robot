*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os os campos na Tela: Utilização de Guarda-Volumes (Filtro)
${SCREENNAME}  Utilização de Guarda-Volumes
${APPNAME}     cnsMovimentacaoGVolumes

*** Test Cases ***
Testcase: Verificar todos os os campos na Tela: Utilização de Guarda-Volumes (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo vizualizar a tela: Utilização de Guarda-Volumes (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Guarda-Volumes	
  E verificar o campo: Tipo
  E verificar o campo: Data Utilização	
  E verificar o campo: Hora Utilização	
  E verificar o campo: Data Liberação	
  E verificar o campo: Hora Liberação	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Quando visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentacaoGVolumes.Acessar Tela Utilização de Guarda-Volumes (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Utilização de Guarda-Volumes (Filtro)  
    resource_cnsMovimentacaoGVolumes.Acessar Tela: Utilização de Guarda-Volumes (Filtro)

E verificar a label: Pesquisa
    resource_cnsMovimentacaoGVolumes.Verificar a label Pesquisa

E verificar o campo: Guarda-Volumes	
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Guarda-Volumes

E verificar o campo: Tipo
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Tipo

E verificar o campo: Data Utilização	
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Data Utilização

E verificar o campo: Hora Utilização	
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Hora Utilização
E verificar o campo: Data Liberação	
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Data Liberação

E verificar o campo: Hora Liberação	
    resource_cnsMovimentacaoGVolumes.Verificar o campo: Hora Liberação

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"