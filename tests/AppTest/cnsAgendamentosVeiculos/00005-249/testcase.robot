*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Agendamentos

*** Test Cases ***

Testcase: Preencher todos os campos da tela Agendamentos
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  Então devo visualizar a tela: Agendamentos
  E selecionar uma opção no campo Veículo "Exatamente igual"
  E preencher o campo Veículo "ok"
  E selecionar uma opção no campo Data de Saída "Exatamente igual"
  E preencher o campo Data de Saída "22/10/2022" 
  E selecionar uma opção no campo Hora de Saída "Exatamente igual"
  E preencher o campo Hora de Saída "15:00"
  E selecionar uma opção no campo Data de Retirada "Exatamente igual"
  E preencher o campo Data de Retirada "10/12/2022"
  E selecionar uma opção no campo Hora de Retirada "Exatamente igual"
  E preencher o campo Hora de Retirada "19:00"
  E selecionar uma opção no campo Agendamento de Utilização do Veículo "Exatamente igual"
  E preencher o campo Agendamento de Utilização do Veículo "ok"
  E selecionar uma opção no campo Cód. Colaborador Solicitante "Exatamente igual"
  E preencher o campo Cód. Colaborador Solicitante "ok"            

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Então devo visualizar a tela: Agendamentos
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamentos



E selecionar uma opção no campo Veículo "${VEÍCULO}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Veículo "${VEÍCULO}"

E preencher o campo Veículo "${VEÍCULO}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Veículo "${VEÍCULO}"

E selecionar uma opção no campo Data de Saída "${DATA_DE_SAÍDA}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Data de Saída "${DATA_DE_SAÍDA}"

E preencher o campo Data de Saída "${DIA}/${MES}/${ANO}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Data de Saída "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Hora de Saída "${HORA_DE_SAÍDA}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Hora de Saída "${HORA_DE_SAÍDA}"

E preencher o campo Hora de Saída "${HORA}:${MIN}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Hora de Saída "${HORA}:${MIN}"

E selecionar uma opção no campo Data de Retirada "${DATA_DE_RETIRADA}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Data de Retirada "${DATA_DE_RETIRADA}"

E preencher o campo Data de Retirada "${DIA}/${MES}/${ANO}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Data de Retirada "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Hora de Retirada "${HORA_DE_RETIRADA}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Hora de Retirada "${HORA_DE_RETIRADA}"

E preencher o campo Hora de Retirada "${HORA}:${MIN}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Hora de Retirada "${HORA}:${MIN}"

E selecionar uma opção no campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"

E preencher o campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"

E selecionar uma opção no campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"
  resource_cnsAgendamentosVeiculos.Selecionar uma opção no campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"

E preencher o campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"
  resource_cnsAgendamentosVeiculos.Preencher o campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"
