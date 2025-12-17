*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Cadastrar um Agendamento de Candidato.


*** Test Cases ***
Testcase: Cadastrar um Agendamento de Candidato
  [Tags]  REGISTER  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Agendamento de Candidato (Inclusão)
  E preencher o campo Data do Agendamento "05/05/2022"
  E preencher o campo Hora do Agendamento "1200"
  E preencher o campo Candidato "4"
  Então devo clicar no botão: Incluir o Registro
  E visualizar a tela: Agendamento de Candidato (Edição)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Agendamento de Candidato (Inclusão)
  resource_frmagendamentoimprensa.Acessar Tela Agendamento de Candidato (Inclusão)

E preencher o campo Data do Agendamento "${DATA}"
  resource_frmagendamentoimprensa.Preencher o campo Data do Agendamento "${DATA}"

E preencher o campo Hora do Agendamento "${HORA}"
  resource_frmagendamentoimprensa.Preencher o campo Hora do Agendamento "${HORA}"

E preencher o campo Candidato "${CANDIDATO}"
  resource_frmagendamentoimprensa.Preencher o campo Candidato "${CANDIDATO}"

Então devo clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

E visualizar a tela: Agendamento de Candidato (Edição)  
  resource_frmagendamentoimprensa.Acessar Tela Agendamento de Candidato (Atualização)