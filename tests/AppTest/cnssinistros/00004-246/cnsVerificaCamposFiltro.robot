*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot
Resource        ../../../../resource/app/resource_cnssinistros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Sinistro (Filtro)
${SCREENNAME}  Sinistro
${APPNAME}     cnssinistros

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Sinistro (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  Quando visualizar a tela: Sinistro (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: CSinistro (Filtro)
  E verificar o campo: Placa do Veículo	
  E verificar o campo: Data do Sinistro	
  E verificar o campo: Descrição
  E verificar o campo: Nome do Condutor	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos| Frota | Ocorrências | Sinistros

Quando visualizar a tela: Sinistro (Consulta)
  resource_cnssinistros.Acessar Tela Consulta de Sinistros

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: CSinistro (Filtro)  
  resource_cnssinistros.Acessar Tela de Sinistros (Filtro)

E verificar o campo: Placa do Veículo	
  resource_cnssinistros.Verificar o campo: Placa do Veículo

E verificar o campo: Data do Sinistro	
  resource_cnssinistros.Verificar o campo: Data do Sinistro

E verificar o campo: Descrição
  resource_cnssinistros.Verificar o campo: Descrição

E verificar o campo: Nome do Condutor	
  resource_cnssinistros.Verificar o campo: Nome do Condutor

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  