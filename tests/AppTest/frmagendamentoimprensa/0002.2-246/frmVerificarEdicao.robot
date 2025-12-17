*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/resource_utils.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Agendamento de Candidato
${APPNAME}     frmagendamentoimprensa
${OBJETIVO}    Verificar todos os campos na tela Agendamento de Candidato


*** Test Cases ***
Verificar todos os campos na tela Agendamento de Candidato
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no botão: Editar o registro
  E visualizar a tela: Agendamento de Candidato (Edição)
  Então devo verificar o campo Data *
  E verificar o campo Hora *
  E verificar o campo Candidato *	
  E verificar o campo: Nome	
  E verificar o campo: CPF	
  E verificar o campo: Carteira de Identidade	
  E verificar o campo: Foto	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

E visualizar a tela: Agendamento de Candidato (Edição)
  resource_frmagendamentoimprensa.Acessar Tela Agendamento de Candidato (Atualização)

Então devo verificar o campo Data *
  resource_frmagendamentoimprensa.E verificar o campo Data do Agendamento 

E verificar o campo Hora *
  resource_frmagendamentoimprensa.E verificar o campo Hora do Agendamento  

E verificar o campo Candidato *
  resource_frmagendamentoimprensa.E verificar o campo Candidato 

E verificar o campo: Nome	
  resource_frmagendamentoimprensa.E verificar o campo Nome

E verificar o campo: CPF	
  resource_frmagendamentoimprensa.E verificar o campo CPF

E verificar o campo: Carteira de Identidade	
  resource_frmagendamentoimprensa.E verificar o campo Carteira de Identidade

E verificar o campo: Foto	  
  resource_frmagendamentoimprensa.E verificar o campo Foto

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

