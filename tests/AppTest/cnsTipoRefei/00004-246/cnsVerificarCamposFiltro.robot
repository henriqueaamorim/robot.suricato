*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoRefei.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Tipo de Refeição (Filtro)
${SCREENNAME}  Tipo de Refeição
${APPNAME}     cnsTipoRefei

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Tipo de Refeição (Filtro)
  [Tags]   VERIFY  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Tipo de Refeição
  Quando visualizar a tela: Tipo de Refeição (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo de Refeição (Filtro)
  E verificar o campo: Refeição
  E verificar o campo: Empresa
  E verificar o campo: Planta
  E verificar o campo: Subsidio	
  E verificar o campo: Data Inicial	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configuração | Tipo de Refeição
  resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Quando visualizar a tela: Tipo de Refeição (Consulta)
  resource_cnsTipoRefei.Acessar Tela Consulta de Tipo de Refeição

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Refeição (Filtro)  
   resource_cnsTipoRefei.Acessar Tipo de Refeição - Filtro

E verificar o campo: Refeição
  resource_cnsTipoRefei.Verificar o campo: Refeição

E verificar o campo: Empresa
  resource_cnsTipoRefei.Verificar o campo: Empresa

E verificar o campo: Planta
  resource_cnsTipoRefei.Verificar o campo: Planta

E verificar o campo: Subsidio	
  resource_cnsTipoRefei.Verificar o campo: Subsidio

E verificar o campo: Data Inicial	
  resource_cnsTipoRefei.Verificar o campo: Data Inicial

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"