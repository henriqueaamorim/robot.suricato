*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot
Resource        ../../../../resource/app/resource_cnscoberturaseguro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Cobertura de Seguros - Modo Busca (Consulta)
${SCREENNAME}  Cobertura de Seguros - Modo Busca
${APPNAME}     cnscoberturaseguro

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Cobertura de Seguros - Modo Busca (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  Quando visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)
  Então devo verificar a label: Tipo Cobertura
  E verifcar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Quando visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)
  resource_cnscoberturaseguro.Acessar Tela Consulta Cobertura de Seguros - Modo Busca

Então devo verificar a label: Tipo Cobertura
  resource_cnscoberturaseguro.Verificar a label Tipo Cobertura

E verifcar a label: Descrição
  resource_cnscoberturaseguro.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	