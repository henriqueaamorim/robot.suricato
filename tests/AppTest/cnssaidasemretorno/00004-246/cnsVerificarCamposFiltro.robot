*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidasemretorno.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Devolução de Veículo
${APPNAME}     cnssaidasemretorno
${OBJETIVO}    Verificar todos os campos na tela: Devolução de Veículo (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Devolução de Veículo (Filtro)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  Quando visualizar a tela: Devolução de Veículo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Devolução de Veículo (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Veículo	
  E verificar o campo: Data de Saída	
  E verificar o campo: Hora de Saída	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

Quando visualizar a tela: Devolução de Veículo (Consulta)
  resource_cnssaidasemretorno.Acessar Tela Devolução de Veículo

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Devolução de Veículo (Filtro)  
  resource_cnssaidasemretorno.Acessar Tela Devolução de Veículo (Filtro)

E verificar a label: Pesquisa
  resource_cnssaidasemretorno.Verificar a label Pesquisa

E verificar o campo: Veículo	
  resource_cnssaidasemretorno.Verificar o campo: Veículo

E verificar o campo: Data de Saída	
  resource_cnssaidasemretorno.Verificar o campo: Data de Saída

E verificar o campo: Hora de Saída	
  resource_cnssaidasemretorno.Verificar o campo: Hora de Saída

E verificar se existe o campo Teste na tela 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	