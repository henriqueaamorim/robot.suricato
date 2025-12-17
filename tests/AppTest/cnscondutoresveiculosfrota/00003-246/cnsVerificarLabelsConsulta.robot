*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcondutoresveiculosfrota.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Condutores de Veículos de Frota (Consulta)
${SCREENNAME}  Condutores de Veículos de Frota
${APPNAME}     cnscondutoresveiculosfrota 

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Condutores de Veículos de Frota (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  Quando visualizar a tela: Condutores de Veículos de Frota (Consulta)
  Então devo verificar a label: Condutor
  E verificar a label: Carteria Habilitação
  E verificar a label: Categoria Habilitação
  E verificar a label: Data Habilitação
  E verificar a label: Vencimento Habilitação
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

Quando visualizar a tela: Condutores de Veículos de Frota (Consulta)
  resource_cnscondutoresveiculosfrota.Acessar Tela Consulta Condutores de Veículos de Frota

Então devo verificar a label: Condutor
  resource_cnscondutoresveiculosfrota.Verificar a label Condutor

E verificar a label: Carteria Habilitação
  resource_cnscondutoresveiculosfrota.Verificar a label Carteira Habilitação

E verificar a label: Categoria Habilitação
  resource_cnscondutoresveiculosfrota.Verificar a label Categoria Habilitação

E verificar a label: Data Habilitação
  resource_cnscondutoresveiculosfrota.Verificar a label Data Habilitação

E verificar a label: Vencimento Habilitação
  resource_cnscondutoresveiculosfrota.Verificar a label Vencimento Habilitação

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"