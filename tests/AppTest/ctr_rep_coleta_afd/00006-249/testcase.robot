*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_coleta_afd.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela AFD - Grupo de Rep.

*** Test Cases ***
Testcase: Preencher todos os campos na tela AFD - Grupo de Rep
  [Tags]  REGISTER  POLYVALENT  249  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  Quando eu visualizar a tela: AFD
  E selecionar o botão: Grupo de Rep
  Então devo visualizar a tela: AFD - Grupo de Rep
  E selecionar uma opção no campo Grupo de REP "GRUPO REP PADRÃO"
  #E selecionar uma opção no campo Codin ""
  E preencher o campo Indelével "3"
  E preencher o campo Matrícula "1"
  E preencher o campo data Inicial "13/02/2022"
  E preencher o campo data Final "14/02/2022"
  E selecionar uma opção no campo Tipo de Registro "3 - Marcações"
  E selecionar uma opção no campo Geração do Arquivo "Arquivo Único"
  E marcar a opção Exibir Arquivo em Tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

Quando eu visualizar a tela: AFD
  resource_ctr_rep_coleta_afd.Acessar Tela AFD

E selecionar o botão: Grupo de Rep
  resource_ctr_rep_coleta_afd.Selecionar box Grupo de Rep

Então devo visualizar a tela: AFD - Grupo de Rep
  resource_ctr_rep_coleta_afd.Acessar Tela AFD - Grupo de Rep

E selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"
  resource_ctr_rep_coleta_afd.Selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_ctr_rep_coleta_afd.Selecionar uma opção no campo Codin "${CODIN}"

E preencher o campo Indelével "${INDELEVEL}"
  resource_ctr_rep_coleta_afd.Preencher o campo Indelével "${INDELEVEL}"

E preencher o campo Matrícula "${MATRICULA}"
  resource_ctr_rep_coleta_afd.Preencher o campo Matrícula "${MATRICULA}"

E preencher o campo data Inicial "${DATA_INICIAL}"
  resource_ctr_rep_coleta_afd.Preencher o campo data Inicial "${DATA_INICIAL}"

E preencher o campo data Final "${DATA_FINAL}"
  resource_ctr_rep_coleta_afd.Preencher o campo data Final "${DATA_FINAL}"

E selecionar uma opção no campo Tipo de Registro "${TIPO_DE_REGISTRO}"
  resource_ctr_rep_coleta_afd.Selecionar uma opção no campo Tipo de Registro "${TIPO_DE_REGISTRO}"

E selecionar uma opção no campo Geração do Arquivo "${GERACAO_DO_ARQUIVO}"
  resource_ctr_rep_coleta_afd.Selecionar uma opção no campo Geração do Arquivo "${GERACAO_DO_ARQUIVO}"

E marcar a opção Exibir Arquivo em Tela
  resource_ctr_rep_coleta_afd.Marcar a opção Exibir Arquivo em Tela