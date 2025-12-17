*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmultas.robot
Resource        ../../../../resource/app/resource_cnsmultas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Multa (Filtro) 
${SCREENNAME}  Multa
${APPNAME}     cnsmultas

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Multa (Filtro) 
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  Quando visualizar a tela: Multa (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Multa (Filtro) 
  E verificar o campo: Descrição da Infrações	
  E verificar o campo: Enquadramento CTB	
  E verificar o campo: Gravidade	
  E verificar o campo: Pontos	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Quando visualizar a tela: Multa (Consulta)
  resource_cnsmultas.Acessar Tela Consulta de Multas

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Multa (Filtro)   
  resource_cnsmultas.Acessar Tela Multa (Filtro)

E verificar o campo: Descrição da Infrações	
  resource_cnsmultas.Verificar o campo: Descrição da Infração

E verificar o campo: Enquadramento CTB	
  resource_cnsmultas.Verificar o campo: Enquadramento CTB

E verificar o campo: Gravidade	
  resource_cnsmultas.Verificar o campo: Gravidade

E verificar o campo: Pontos	
  resource_cnsmultas.Verificar o campo: Pontos

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  