*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposTerceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Tipo de Terceiro (Filtro)
${SCREENNAME}  Tipo de Terceiro
${APPNAME}     cnsTiposTerceiros

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Tipo de Terceiro (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Quando visualizar a tela: Tipo de Terceiro (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Tipo de Terceiro (Filtro)
  E verificar a label: Pesquisar
  E verificar o campo: Tipo de Terceiro	
  E verificar o campo: Descrição	
  E verificar se existe o campo Teste na tela
 
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Quando visualizar a tela: Tipo de Terceiro (Consulta)
  resource_cnsTiposTerceiros.Acessar Tela Consulta de Tipos de Terceiros

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Terceiro (Filtro)
  resource_cnsTiposTerceiros.Acessar Tela Tipo de Terceiro (Filtro)

E verificar a label: Pesquisar
    resource_cnsTiposTerceiros.Verificar a label Pesquisar

E verificar o campo: Tipo de Terceiro	
    resource_cnsTiposTerceiros.Verificar o campo Tipo de Terceiro

E verificar o campo: Descrição	  
    resource_cnsTiposTerceiros.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"