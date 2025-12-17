*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGuardaVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Guarda-Volume (Filtro)
${SCREENNAME}  Guarda-Volume 
${APPNAME}     cnsGuardaVolumes

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Guarda-Volume (Filtro)
  [Tags]    VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  Quando visualizar a tela: Guarda-Volume (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Guarda-Volume (Filtro)
  E verificar o campo: Número do Guarda-Volumes	
  E verificar o campo: Descrição do Guarda-Volumes	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Quando visualizar a tela: Guarda-Volume (Consulta)
  resource_cnsGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Guarda-Volume (Filtro)  
    resource_cnsGuardaVolumes.Acessar Tela:Guarda-Volume (Filtro)

E verificar o campo: Número do Guarda-Volumes	
    resource_cnsGuardaVolumes.Verificar o campo: Número do Guarda-Volumes

E verificar o campo: Descrição do Guarda-Volumes	
    resource_cnsGuardaVolumes.Verificar o campo: Descrição do Guarda-Volumes

E verificar se existe o campo Teste na tela     
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"