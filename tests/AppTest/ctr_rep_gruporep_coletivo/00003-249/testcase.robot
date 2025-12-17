*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_gruporep_coletivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela Atualizar Grupo de REP Coletivo.


*** Test Cases ***
Testcase: Preencher todos os campos na tela Atualizar Grupo de REP Coletivo
  [Tags]  REGISTER  POLYVALENT   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  Então devo ver a tela: Atualizar Grupo de REP Coletivo
  E selecionar uma opção no campo Grupo de REP "TESTE ALE"
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Filial "Alfandega"
  E selecionar uma opção no campo Organograma "Total Motors"
  E selecionar uma opção no campo Local "Matriz 1"
  E selecionar uma opção no campo Centro de Custo "Teste"
  E selecionar uma opção no campo Tipo de Colaborador "Parceiro"
  E selecionar uma opção no campo Escala "toni"


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

Então devo ver a tela: Atualizar Grupo de REP Coletivo
  resource_ctr_rep_gruporep_coletivo.Acessar Tela Atualizar Grupo de REP Coletivo

E selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Filial "${FILIAL}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Filial "${FILIAL}"

E selecionar uma opção no campo Organograma "${ORGANOGRAMA}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Organograma "${ORGANOGRAMA}"

E selecionar uma opção no campo Local "${LOCAL}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Local "${LOCAL}"

E selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"

E selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"

E selecionar uma opção no campo Escala "${ESCALA}"
  resource_ctr_rep_gruporep_coletivo.Selecionar uma opção no campo Escala "${ESCALA}"
