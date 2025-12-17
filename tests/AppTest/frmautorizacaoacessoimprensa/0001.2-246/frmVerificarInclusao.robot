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
${SCREENNAME} 


*** Test Cases ***
Testcase: Acessar Tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Autorização de Acesso de Candidato (Inclusão)
  Então devo verificar o campo: Data *	
  E verificar o campo: Hora *	
  E verificar o campo: Candidato *	
  E verificar o campo: Nome
  E verificar o campo: CPF
  E verificar o campo: Carteira de Identidade	
  E verificar o campo: Foto
  E verificar o campo: Motivo *	
  E verificar o campo: Data do Agendamento *	
  E verificar o campo: Hora do Agendamento *	


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsautorizacaoacessoimprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  
E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Autorização de Acesso de Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

Então devo verificar o campo: Data *	
  resource_frmautorizacaoacessoimprensa.E verficar o campo Data

E verificar o campo: Hora *	
  resource_frmautorizacaoacessoimprensa.E verficar o campo Hora

E verificar o campo: Candidato *	
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Candidato

E verificar o campo: Nome
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Nome

E verificar o campo: CPF
  resource_frmautorizacaoacessoimprensa.E veriicar o campo CPF

E verificar o campo: Carteira de Identidade	
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Carteira de Identidade

E verificar o campo: Foto
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Foto

E verificar o campo: Motivo *	
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Motivo

E verificar o campo: Data do Agendamento *	
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Data do Agendamento

E verificar o campo: Hora do Agendamento *  
  resource_frmautorizacaoacessoimprensa.E veriicar o campo Hora do Agendamento