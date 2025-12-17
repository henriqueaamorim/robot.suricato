*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsautorizacaoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Autorização de Acesso Candidato (Inclusão)


*** Test Cases ***
Testcase: Acessar Tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Autorização de Acesso de Candidato (Inclusão)
  Então devo preencher o campo: Data * "27/01/2025"
  E preencher o campo: Hora * "13:00"
  E selecionar uma opção no campo: Motivo * "1"
  E preencher o campo: Data do Agendamento * "27/02/2025"	
  E preencher o campo: Hora do Agendamento * "15:00"


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsautorizacaoacessoimprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  
E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Autorização de Acesso de Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

Então devo preencher o campo: Data * "${DATA}"
  resource_frmautorizacaoacessoimprensa.Preencher campo Data "${DATA}"

E preencher o campo: Hora * "${HORA}"
  resource_frmautorizacaoacessoimprensa.Preencher campo Hora "${HORA}"

E selecionar uma opção no campo: Motivo * "${MOTIVO}"
  resource_frmautorizacaoacessoimprensa.Selecionar uma opção no campo Motivo * "${MOTIVO}"

E preencher o campo: Data do Agendamento * "${DATA_AGENDA}"
  resource_frmautorizacaoacessoimprensa.Preencher campo Data do Agendamento "$DATA_AGENDA"

E preencher o campo: Hora do Agendamento * "${AGENDAMENTO}"
  resource_frmautorizacaoacessoimprensa.Preencher campo Hora do Agendamento "${AGENDAMENTO}"