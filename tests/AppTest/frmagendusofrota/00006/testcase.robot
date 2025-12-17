*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendusofrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Agendamento do Uso da Frota (Atualização)
${APPNAME}     frmagendusofrota
${OBJETIVO}    Verificar todos os campos na tela Agendamento do Uso da Frota (Atualização)


*** Test Cases ***

Testcase: Verificar todos os campos na tela Agendamento do Uso da Frota (Atualização)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Então devo visualizar a tela: Agendamento do Uso da Frota (Atualização)
  E verificar a label Data de Saída
  E verificar a label Hora de Saída
  E verificar o campo Data Prevista do Retorno*
  E verificar o campo Hora Prevista do Retorno*
  E verificar a label Veículo *
  E verificar o campo Motivo do Uso
  E verificar o campo Quantidade de Passageiros
  E verificar o campo Quantidade Transportar KG
  E verificar o campo Destino
  E verificar o campo Observação
  E verificar a label Solicitante
  E verificar o campo Código 
  E verificar a label Empresa
  E verificar a label Tipo
  E verificar a label Matrícula
  E verificar a label Nome do Solicitante
  E verificar a label Condutor
  E verificar o segundo campo Código 
  E verificar a segunda label Empresa 
  E verificar a segunda label Tipo 
  E verificar a segunda label Matrícula 
  E verificar a label Nome do Condutor
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Então devo visualizar a tela: Agendamento do Uso da Frota (Atualização)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Atualização)

E verificar a label Data de Saída
  resource_frmagendusofrota.Verificar a label Data de Saída

E verificar a label Hora de Saída
  resource_frmagendusofrota.Verificar a label Hora de Saída

E verificar o campo Data Prevista do Retorno*
  resource_frmagendusofrota.Verificar o campo Data Prevista do Retorno*

E verificar o campo Hora Prevista do Retorno*
  resource_frmagendusofrota.Verificar o campo Hora Prevista do Retorno*

E verificar a label Veículo *
  resource_frmagendusofrota.Verificar a label Veículo *

E verificar o campo Motivo do Uso
  resource_frmagendusofrota.Verificar o campo Motivo do Uso

E verificar o campo Quantidade de Passageiros
  resource_frmagendusofrota.Verificar o campo Quantidade de Passageiros

E verificar o campo Quantidade Transportar KG
  resource_frmagendusofrota.Verificar o campo Quantidade Transportar KG

E verificar o campo Destino
  resource_frmagendusofrota.Verificar o campo Destino

E verificar o campo Observação
  resource_frmagendusofrota.Verificar o campo Observação

E verificar a label Solicitante
  resource_frmagendusofrota.Verificar a label Solicitante

E verificar o campo Código 
  resource_frmagendusofrota.Verificar o campo Código 

E verificar a label Empresa
  resource_frmagendusofrota.Verificar a label Empresa

E verificar a label Tipo
  resource_frmagendusofrota.Verificar a label Tipo

E verificar a label Matrícula
  resource_frmagendusofrota.Verificar a label Matrícula

E verificar a label Nome do Solicitante
  resource_frmagendusofrota.Verificar a label Nome do Solicitante

E verificar a label Condutor
  resource_frmagendusofrota.Verificar a label Condutor

E verificar o segundo campo Código 
  resource_frmagendusofrota.Verificar o segundo campo Código 

E verificar a segunda label Empresa 
  resource_frmagendusofrota.Verificar a segunda label Empresa 

E verificar a segunda label Tipo 
  resource_frmagendusofrota.Verificar a segunda label Tipo 

E verificar a segunda label Matrícula 
  resource_frmagendusofrota.Verificar a segunda label Matrícula 

E verificar a label Nome do Condutor
  resource_frmagendusofrota.Verificar a label Nome do Condutor

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
