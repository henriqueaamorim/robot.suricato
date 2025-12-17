*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoHoraExtra.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na tela: Grupo de Hora Extra (Filtro)
${SCREENNAME}  Grupo de Hora Extra
${APPNAME}     cnsGrupoHoraExtra

*** Test Cases ***
Testcase: Verificar todas os campos na tela: Grupo de Hora Extra (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Hora Extra
  Quando eu visualizar a tela: Grupo de Hora Extra (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo de Hora Extra (Filtro)
  E verificar o campo: ID Cadastro	
  E verificar o campo: Nome do Grupo	
  E verificar se existe o campo Teste na tela
  

*** Keywords ***
Dado que eu acesse o menu: Configuração | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Quando eu visualizar a tela: Grupo de Hora Extra (Consulta)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Grupo de Hora Extra (Filtro)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra - Filtro

E verificar o campo: ID Cadastro	
  resource_cnsGrupoHoraExtra.Verificar o campo: ID Cadastro

E verificar o campo: Nome do Grupo	
  resource_cnsGrupoHoraExtra.Verificar o campo: Nome do Grupo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"