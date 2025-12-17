*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposVisitas.robot
Resource        ../../../../resource/app/resource_frmTiposVisitas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Tipo de Visita (Filtro)
${SCREENNAME}  Tipo de Visita
${APPNAME}     cnsTiposVisitas

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Tipo de Visita (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  Quando eu visualizar a tela: Tipo de Visita (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela:Tipo de Visita (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Descrição	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Tipo de Visita

Quando eu visualizar a tela: Tipo de Visita (Consulta)
  resource_cnsTiposVisitas.Acessar Tela Consulta de Tipos de Visita

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela:Tipo de Visita (Filtro)
  resource_cnsTiposVisitas.Acessar Tela: Consulta de Tipos de Visita (Filtro)

E verificar a label: Pesquisa
    resource_cnsTiposVisitas.Verificar a label Pesquisa

E verificar o campo: Descrição	
    resource_cnsTiposVisitas.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"