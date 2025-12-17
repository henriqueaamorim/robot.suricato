*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot
Resource        ../../../../resource/app/resource_cnscoberturaseguro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Cobertura de Seguros - Modo Busca
${APPNAME}     cnscoberturaseguro
${OBJETIVO}    Verificar todos os campos na tela Consulta Cobertura de Seguros - Modo Busca.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Cobertura de Seguros - Modo Busca
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  Quando eu visualizar a tela: Cobertura de Seguros (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Cobertura de Seguros - Modo Busca
  E verificar a label Tipo Cobertura
  E verificar a label Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Quando eu visualizar a tela: Cobertura de Seguros (Inclusão)
  resource_frmcoberturaseguro.Acessar Tela Cobertura de Seguros (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Cobertura de Seguros - Modo Busca
  resource_cnscoberturaseguro.Acessar Tela Consulta Cobertura de Seguros - Modo Busca

E verificar a label Tipo Cobertura
  resource_cnscoberturaseguro.Verificar a label Tipo Cobertura

E verificar a label Descrição
  resource_cnscoberturaseguro.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
