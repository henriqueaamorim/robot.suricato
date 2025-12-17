*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPermissaoColetiva.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Grupo de Acesso Coletivo
${APPNAME}     ctrPermissaoColetiva
${OBJETIVO}   Verificar todos os campos na tela: Grupo de Acesso Coletivo - Temporária

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Grupo de Acesso Coletivo - Temporária
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Grupo de Acesso Coletivo
  Quando visualizar a tela: Grupo de Acesso Coletivo
  E setar o tipo de Permissão: Temporária
  E verificar o campo: Tipo de Permissão	
  E verificar a label: Temporária
  Então devo verificar o campo: Grupo de Acesso - Normal 
  E verificar o campo: Início
  E verificar o campo: Término
  E verificar o campo: Empresa
  E verificar o campo: Tipo de Colaborador	
  E verificar o campo: Filial
  E verificar o campo: Organograma	
  E verificar o campo: Local
  E verificar o campo: Situação
  E verificar o campo: Grupo de Cargo	
  E verificar o campo: Cargo
  E verificar o campo: Grupo de Acesso	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Grupo de Acesso Coletivo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo

Quando visualizar a tela: Grupo de Acesso Coletivo
  resource_ctrPermissaoColetiva.Acessar Tela Grupo de Acesso Coletivo

E setar o tipo de Permissão: Temporária
    resource_ctrPermissaoColetiva.Selecionar box Temporária

E verificar o campo: Tipo de Permissão	
    resource_ctrPermissaoColetiva.E verificar o campo Tipo de Permissão

E verificar a label: Temporária
    resource_ctrPermissaoColetiva.E verificar a label: Temporária

Então devo verificar o campo: Grupo de Acesso - Normal 
    resource_ctrPermissaoColetiva.E verificar o campo Grupo de Acesso - Normal (Temporária)

E verificar o campo: Início
    resource_ctrPermissaoColetiva.E verificar o campo Início

E verificar o campo: Término
    resource_ctrPermissaoColetiva.E verificar o campo Término

E verificar o campo: Empresa
    resource_ctrPermissaoColetiva.E verificar o campo Empresa

E verificar o campo: Tipo de Colaborador	
    resource_ctrPermissaoColetiva.E verificar o campo Tipo de Colaborador

E verificar o campo: Filial
    resource_ctrPermissaoColetiva.E verificar o campo Filial

E verificar o campo: Organograma	
    resource_ctrPermissaoColetiva.E verificar o campo Organograma

E verificar o campo: Local
    resource_ctrPermissaoColetiva.E verificar o campo Local

E verificar o campo: Situação
    resource_ctrPermissaoColetiva.E verificar o campo Situação 

E verificar o campo: Grupo de Cargo	
    resource_ctrPermissaoColetiva.E verificar o campo Grupo de Cargo

E verificar o campo: Cargo
    resource_ctrPermissaoColetiva.E verificar o campo Cargo

E verificar o campo: Grupo de Acesso	
    resource_ctrPermissaoColetiva.E verificar o campo Grupo de Acesso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"




