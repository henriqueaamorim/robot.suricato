*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnsreclamacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Reclamações (Filtro)
${SCREENNAME}  Reclamações
${APPNAME}     cnsreclamacoes

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Reclamações (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  Quando visualizar a tela: Reclamações (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Reclamações (Filtro)
  Então devo verificar o campo: Nome do Condutor	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Quando visualizar a tela: Reclamações (Consulta)
  resource_cnsreclamacoes.Acessar Tela Consulta de Reclamações

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Reclamações (Filtro)  
  resource_cnsreclamacoes.Acessar Tela Reclamações (Filtro)

Então devo verificar o campo: Nome do Condutor	
  resource_cnsreclamacoes.Verificar o campo: Nome do Condutor

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	