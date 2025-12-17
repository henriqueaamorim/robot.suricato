*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot
Resource        ../../../../resource/app/resource_cnscoberturaseguro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Cobertura de Seguros - Modo Busca (Filtro)
${SCREENNAME}  Cobertura de Seguros - Modo Busca
${APPNAME}     cnscoberturaseguro

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Cobertura de Seguros - Modo Busca (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  Quando visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Cobertura de Seguros - Modo Busca (Filtro)
  E verificar o campo: Tipo Cobertura	
  E verificar o campo: Descrição	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Quando visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)
  resource_cnscoberturaseguro.Acessar Tela Consulta Cobertura de Seguros - Modo Busca

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Cobertura de Seguros - Modo Busca (Filtro)  
  resource_cnscoberturaseguro.Acessar Tela Cobertura de Seguros - Modo Busca (Filtro)

E verificar o campo: Tipo Cobertura	
  resource_cnscoberturaseguro.Verificar o campo: Tipo Cobertura

E verificar o campo: Descrição	
  resource_cnscoberturaseguro.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	