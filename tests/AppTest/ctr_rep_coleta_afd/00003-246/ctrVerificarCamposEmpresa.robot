*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_coleta_afd.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   AFD - Empresa
${APPNAME}      ctr_rep_coleta_afd
${OBJETIVO}     Verificar todos os campos na tela: AFD (Empresa)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: AFD (Empresa)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]  ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  Quando eu visualizar a tela: AFD
  E setar a opção: Empresa
  Então devo visualizar a tela: AFD (Empresa)
  E verificar o campo: Pesquisar Por
  E verificar o campo: Empresa 
  E verificar o campo: Planta
  E verificar o campo: Codin
  E verificar o campo: Indelével
  E verificar o campo: Matrícula
  E verificar o campo: Data Inicial	
  E verificar o campo: Data Final	
  E verificar o campo: Tipo de Registro *	
  E verificar o campo: Geração do Arquivo	
  E verificar o campo: Exibir Arquivo em Tela	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

Quando eu visualizar a tela: AFD
  resource_ctr_rep_coleta_afd.Acessar Tela AFD

E setar a opção: Empresa
  resource_ctr_rep_coleta_afd.Selecionar box Empresa

Então devo visualizar a tela: AFD (Empresa)
  resource_ctr_rep_coleta_afd.Acessar Tela AFD - Empresa

E verificar o campo: Pesquisar Por
  resource_ctr_rep_coleta_afd.Verificar o campo Pesquisar Por

E verificar o campo: Empresa 
  resource_ctr_rep_coleta_afd.Verificar o campo Empresa *

E verificar o campo: Planta
  resource_ctr_rep_coleta_afd.Verificar o campo Planta

E verificar o campo: Codin
  resource_ctr_rep_coleta_afd.Verificar o campo Codin

E verificar o campo: Indelével
  resource_ctr_rep_coleta_afd.Verificar o campo Indelével

E verificar o campo: Matrícula
  resource_ctr_rep_coleta_afd.Verificar o campo Matrícula

E verificar o campo: Data Inicial	
  resource_ctr_rep_coleta_afd.Verificar o campo Data Inicial

E verificar o campo: Data Final	
  resource_ctr_rep_coleta_afd.Verificar o campo Data Final

E verificar o campo: Tipo de Registro *	
  resource_ctr_rep_coleta_afd.Verificar o campo Tipo de Registro *

E verificar o campo: Geração do Arquivo	
  resource_ctr_rep_coleta_afd.Verificar o campo Geração do Arquivo

E verificar o campo: Exibir Arquivo em Tela	  
  resource_ctr_rep_coleta_afd.Verificar o campo Exibir Arquivo em Tela

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"