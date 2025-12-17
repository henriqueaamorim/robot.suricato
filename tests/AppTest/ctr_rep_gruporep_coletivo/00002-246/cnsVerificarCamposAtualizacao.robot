*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_gruporep_coletivo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Atualizar Grupo de REP Coletivo
${APPNAME}     ctr_rep_gruporep_coletivo
${OBJETIVO}    Verificar todos os campos na tela Atualizar Grupo de REP Coletivo.

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Atualizar Grupo de REP Coletivo
  [Tags]  VERIFY    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  Então devo ver a tela: Atualizar Grupo de REP Coletivo
  E verificar a label: Grupo de REP
  E verificar o campo Grupo de REP 
  E verificar a label: Filtro
  E verificar o campo Empresa    
  E verificar o campo Filial     
  E verificar o campo Organograma 
  E verificar o campo Local 
  E verificar o campo Centro de Custo     
  E verificar o campo Tipo de Colaborador 
  E verificar o campo Escala    
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

Então devo ver a tela: Atualizar Grupo de REP Coletivo
  resource_ctr_rep_gruporep_coletivo.Acessar Tela Atualizar Grupo de REP Coletivo

E verificar a label: Grupo de REP  
  resource_ctr_rep_gruporep_coletivo.Verificar a label Grupo de REP

E verificar o campo Grupo de REP 
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Grupo de REP 

E verificar a label: Filtro
  resource_ctr_rep_gruporep_coletivo.Verificar a label Filtro

E verificar o campo Empresa    
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Empresa 

E verificar o campo Filial     
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Filial  

E verificar o campo Organograma 
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Organograma 

E verificar o campo Local 
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Local 

E verificar o campo Centro de Custo        
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Centro de Custo

E verificar o campo Tipo de Colaborador 
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Tipo de Colaborador 

E verificar o campo Escala    
  resource_ctr_rep_gruporep_coletivo.E verificar o campo Escala

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"