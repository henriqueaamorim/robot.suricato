*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLoteCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Gerar Lote de Crachá
${SCREENNAME}  Lote de Crachá
${APPNAME}     ctrLoteCracha

*** Test Cases ***

Testcase: Verificar todos os campos na tela: Gerar Lote de Crachá
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  Quando visualizar a tela: Gerar Lote de Crachá
  Então devo verificar o campo: Empresa
  E verificar o campo: Tipo de Colaborador	
  E verificar o campo: Filial	
  E verificar o campo: Organograma	                        
  E verificar o campo: Local                                                                                             
  E verificar o campo: Situação	
  E verificar o campo: Grupo de Cargo	
  E verificar o campo: Grupo de Acesso 1	
  E verificar o campo: Grupo de Acesso 2	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Quando visualizar a tela: Gerar Lote de Crachá
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha

Então devo verificar o campo: Empresa
  resource_ctrLoteCracha.Verificar o campo Empresa

E verificar o campo: Tipo de Colaborador	
  resource_ctrLoteCracha.Verificar o campo Tipo de Colaborador

E verificar o campo: Filial	
  resource_ctrLoteCracha.Verificar o campo Filial

E verificar o campo: Organograma	                        
  resource_ctrLoteCracha.Verificar o campo Organograma

E verificar o campo: Local                                                                                             
  resource_ctrLoteCracha.Verificar o campo Local

E verificar o campo: Situação	
  resource_ctrLoteCracha.Verificar o campo Situação 

E verificar o campo: Grupo de Cargo	
  resource_ctrLoteCracha.Verficar o campo Grupo de Cargo

E verificar o campo: Grupo de Acesso 1	
  resource_ctrLoteCracha.Verificar o campo Grupo de Acesso 1 

E verificar o campo: Grupo de Acesso 2	
  resource_ctrLoteCracha.Verificar o campo Grupo de Acesso 2

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"