*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCrachasMestre.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Crachá Mestre (Filtro)
${SCREENNAME}  Crachá Mestre
${APPNAME}     cnsCrachasMestre

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Crachá Mestre (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  Quando visualizar a tela: Crachá Mestre (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Crachá Mestre (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Nome do Colaborador	
  E verificar o campo: Data Início	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  resource_mnu.Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

Quando visualizar a tela: Crachá Mestre (Consulta)
  resource_cnsCrachasMestre.Acessar Tela Consulta de Crachás Mestre

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Mestre (Filtro)  
  resource_cnsCrachasMestre.Acessar Tela: Crachá Mestre (Filtro)

E verificar a label: Pesquisa
  resource_cnsCrachasMestre.Verificar a label Pesquisa

E verificar o campo: Tipo do Colaborador	
  resource_cnsCrachasMestre.Verificar o campo: Tipo do Colaborador

E verificar o campo: Nome do Colaborador	
  resource_cnsCrachasMestre.Verificar o campo: Nome do Colaborador

E verificar o campo: Data Início	
  resource_cnsCrachasMestre.Verificar o campo Data Início

E verificar se existe o campo Teste na tela     
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"