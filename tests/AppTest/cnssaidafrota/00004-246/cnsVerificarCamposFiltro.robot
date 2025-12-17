*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Entrega de Veículo
${APPNAME}     cnssaidafrota
${OBJETIVO}    Verificar todos os campos na tela: Entrega de Veículo (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Entrega de Veículo (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Quando visualizar a tela: Entrega de Veículo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Entrega de Veículo (Filtro)
  E verificar o campo: Veículo	
  E verificar o campo: Data de Saída	
  E verificar o campo: Destino
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando visualizar a tela: Entrega de Veículo (Consulta)
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Entrega de Veículo (Filtro)  
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo (Filtro)

E verificar o campo: Veículo	
  resource_cnssaidafrota.Verificar o campo: Veículo

E verificar o campo: Data de Saída	
  resource_cnssaidafrota.Verificar o campo: Data de Saída

E verificar o campo: Destino
  resource_cnssaidafrota.Verificar o campo: Destino

E verificar se existe o campo Teste na tela 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	