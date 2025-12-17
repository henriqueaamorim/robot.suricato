*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsAlarmesTratados.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Alarmes Tratados

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Alarmes Tratados
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Alarmes Tratados - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Alarmes Tratados
  E clicar no botão pesquisar
  E selecionar uma opção no campo Planta "AUG"
  E selecionar uma opção no campo Codin "OK"
  E preencher o campo IP "OK"
  E selecionar uma opção no campo Grupo "a" 
  E selecionar uma opção no campo Alarme "Abertura Irregular"
  E preencher o campo Data do Alarme inicial "20/02/2022"
  E preencher o campo Data do Alarme final "10/05/2023"
  E preencher o campo Hora do Alarme inicial "15:30"
  E preencher o campo Hora do Alarme final "22:00"
  E selecionar uma opção no campo Tipo Alarme "Alarme ativo"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Alarmes Tratados - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Alarmes Tratados - Consulta

Então devo visualizar a tela: Consulta de Alarmes Tratados
  resource_cnsAlarmesTratados.Acessar Tela Consulta de Alarmes Tratados




E selecionar uma opção no campo Planta "${PLANTA}"
  resource_cnsAlarmesTratados.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_cnsAlarmesTratados.Selecionar uma opção no campo Codin "${CODIN}"

E preencher o campo IP "${IP}"
  resource_cnsAlarmesTratados.Preencher o campo IP "${IP}"

E selecionar uma opção no campo Grupo "${GRUPO}"
  resource_cnsAlarmesTratados.Selecionar uma opção no campo Grupo "${GRUPO}"

E selecionar uma opção no campo Alarme "${ALARME}"
  resource_cnsAlarmesTratados.Selecionar uma opção no campo Alarme "${ALARME}"

E preencher o campo Data do Alarme inicial "${DIA}/${MES}/${ANO}"
  resource_cnsAlarmesTratados.Preencher o campo Data do Alarme inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data do Alarme final "${DIA}/${MES}/${ANO}"
  resource_cnsAlarmesTratados.Preencher o campo Data do Alarme final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora do Alarme inicial "${HORA}:${MIN}"
  resource_cnsAlarmesTratados.Preencher o campo Hora do Alarme inicial "${HORA}:${MIN}"

E preencher o campo Hora do Alarme final "${HORA}:${MIN}"
  resource_cnsAlarmesTratados.Preencher o campo Hora do Alarme final "${HORA}:${MIN}"

E selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"
  resource_cnsAlarmesTratados.Selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"
