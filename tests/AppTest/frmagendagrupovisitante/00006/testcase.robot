*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Agendamento de Grupo de Visitantes (Inclusão)
${APPNAME}     frmagendagrupovisitante
${OBJETIVO}    Verificar todos os campos na tela Agendamento de Grupo de Visitantes (Inclusão)


*** Test Cases ***

Testcase: Verificar todos os campos na tela Agendamento de Grupo de Visitantes (Inclusão)
  [Tags]  VERIFY   
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  #Clicar No Botão Abrir Um Novo Registro
  E devo Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)
  E verificar o campo Data Prevista da Visita * 
  E verificar o campo Hora Prevista da Visita *
  E verificar o campo Código do Colaborador *
  E verificar o campo Empresa do Visitado 
  E verificar o campo Tipo do Visitado 
  E verificar o campo Matrícula do Visitado 
  E verificar o campo Nome do Visitado 
  E verificar o campo Grupo de Visitantes *
  E verificar o campo Código Empresa Terceira 
  E verificar o campo Quantidade de Visitantes no Grupo 
  E verificar o campo Tipo de Visita * 
  E verificar o campo Grupo de Acesso 
  E verificar o campo Telefone do Grupo de Visitantes 
  E verificar o campo Data da Validade da Visita 
  E verificar o campo Hora da Validade da Visita 
  E verificar o campo Observação 
  E verificar o campo Código do Autorizador *
  E verificar o campo Empresa do Autorizador *
  E verificar o campo Tipo do Autorizador *
  E verificar o campo Matrícula do Autorizador * 
  E verificar o campo Nome do Autorizador * 

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)

Clicar No Botão Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E devo Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)

E verificar o campo Data Prevista da Visita * 
  resource_frmagendagrupovisitante.E verificar o campo Data Prevista da Visita 

E verificar o campo Hora Prevista da Visita *
  resource_frmagendagrupovisitante.E verificar o campo Hora Prevista da Visita

E verificar o campo Código do Colaborador *
  resource_frmagendagrupovisitante.E verificar o campo Código do Colaborador

E verificar o campo Empresa do Visitado 
  resource_frmagendagrupovisitante.E verificar o campo Empresa do Visitado 

E verificar o campo Tipo do Visitado 
  resource_frmagendagrupovisitante.E verificar o campo Tipo do Visitado 

E verificar o campo Matrícula do Visitado 
  resource_frmagendagrupovisitante.E verificar o campo Matrícula do Visitado 

E verificar o campo Nome do Visitado 
  resource_frmagendagrupovisitante.E verificar o campo Nome do Visitado

E verificar o campo Grupo de Visitantes *
  resource_frmagendagrupovisitante.E verificar o campo Grupo de Visitantes

E verificar o campo Código Empresa Terceira 
  resource_frmagendagrupovisitante.E verificar o campo Código Empresa Terceira 

E verificar o campo Quantidade de Visitantes no Grupo 
  resource_frmagendagrupovisitante.E verificar o campo Quantidade de Visitantes no Grupo 

E verificar o campo Tipo de Visita * 
  resource_frmagendagrupovisitante.E verificar o campo Tipo de Visita

E verificar o campo Grupo de Acesso 
  resource_frmagendagrupovisitante.E verificar o campo Grupo de Acesso 

E verificar o campo Telefone do Grupo de Visitantes 
  resource_frmagendagrupovisitante.E verificar o campo Telefone do Grupo de Visitantes 

E verificar o campo Data da Validade da Visita 
  resource_frmagendagrupovisitante.E verificar o campo Data da Validade da Visita 

E verificar o campo Hora da Validade da Visita 
  resource_frmagendagrupovisitante.E verificar o campo Hora da Validade da Visita 

E verificar o campo Observação 
  resource_frmagendagrupovisitante.E verificar o campo Observação

E verificar o campo Código do Autorizador *
  resource_frmagendagrupovisitante.E verificar o campo Código do Autorizador

E verificar o campo Empresa do Autorizador *
  resource_frmagendagrupovisitante.E verificar o campo Empresa do Autorizador

E verificar o campo Tipo do Autorizador *
  resource_frmagendagrupovisitante.E verificar o campo Tipo do Autorizador

E verificar o campo Matrícula do Autorizador * 
  resource_frmagendagrupovisitante.E verificar o campo Matrícula do Autorizador

E verificar o campo Nome do Autorizador * 
  resource_frmagendagrupovisitante.E verificar o campo Nome do Autorizador