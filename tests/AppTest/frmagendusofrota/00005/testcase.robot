*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendusofrota.robot
Resource    ../../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Agendamento do Uso da Frota.


*** Test Cases ***

Testcase: Cadastrar um Agendamento do Uso da Frota
  [Tags]  REGISTER  UNPOPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Então devo visualizar a tela: Agendamento do Uso da Frota (Inclusão)
  E preencher o campo Data Prevista do Retorno "14/04/2022"
  E preencher o campo Hora Prevista do Retorno "1200"
  E preencher o campo Veículo "7"
  E preencher o campo Motivo do Uso "2"
  E preencher o campo Quantidade de Passageiros "3"
  E preencher o campo Quantidade Transportar KG "100"
  E preencher o campo Destino "Destino"
  E preencher o campo Observação "Observação"
  E preencher o campo Código na área Solicitante "2"
  E preencher o campo Código na área Código "4"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Agendamento do Uso da Frota (Atualização)
 
*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Então devo visualizar a tela: Agendamento do Uso da Frota (Inclusão)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Inclusão)

E preencher o campo Data Prevista do Retorno "${DATA}"
  resource_frmagendusofrota.Preencher o campo Data Prevista do Retorno "${DATA}"

E preencher o campo Hora Prevista do Retorno "${HORA}"
  resource_frmagendusofrota.Preencher o campo Hora Prevista do Retorno "${HORA}"

E preencher o campo Veículo "${VEICULO}"
  resource_frmagendusofrota.Preencher o campo Veículo "${VEICULO}"

E preencher o campo Motivo do Uso "${MOTIVO}"
  resource_frmagendusofrota.Preencher o campo Motivo do Uso "${MOTIVO}"

E preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"
  resource_frmagendusofrota.Preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"

E preencher o campo Quantidade Transportar KG "${KG}"
  resource_frmagendusofrota.Preencher o campo Quantidade Transportar KG "${KG}"

E preencher o campo Destino "${DESTINO}"
  resource_frmagendusofrota.Preencher o campo Destino "${DESTINO}"

E preencher o campo Observação "${OBSERVACAO}"
  resource_frmagendusofrota.Preencher o campo Observação "${OBSERVACAO}"

E preencher o campo Código na área Solicitante "${CODIGO}"
  resource_frmagendusofrota.Preencher o campo Código na área Solicitante "${CODIGO}"

E preencher o campo Código na área Código "${CODIGO}"
  resource_frmagendusofrota.Preencher o campo Código na área Código "${CODIGO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Agendamento do Uso da Frota (Atualização)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Atualização)