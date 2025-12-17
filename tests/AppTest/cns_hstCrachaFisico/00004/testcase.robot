*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_hstCrachaFisico.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Histórico de Crachá x Numero Fisico - Filtro
${APPNAME}     cns_hstCrachaFisico
${OBJETIVO}    Verificar todos os campos na tela Consulta Histórico de Crachá x Numero Fisico - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Histórico de Crachá x Numero Fisico - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  E selecionar uma opção no campo Empresa "TESTE"
  E selecionar uma opção no campo Tipo "Terceiro"
  E preencher o campo Matrícula "ok"
  E preencher o campo Nome "ok"
  E preencher o campo Crachá Lógico "ok"    
  E selecionar uma opção no campo Data de Início "Entre dois valores"
  E preencher o campo Data de Início "20/10/2020"
  E preencher o campo Data de Final "20/10/2022"
  E selecionar uma opção no campo Hora de Início "Entre dois valores"
  E preencher o campo Hora de Início "19:00"
  E preencher o campo Hora final "22:00"
  E preencher o campo Crachá Físico "ok"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Histórico de Crachá x Numero Fisico

Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  resource_cns_hstCrachaFisico.Acessar Tela Consulta Histórico de Crachá x Numero Fisico - Filtro


E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cns_hstCrachaFisico.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo "${TIPO}"
  resource_cns_hstCrachaFisico.Selecionar uma opção no campo Tipo "${TIPO}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cns_hstCrachaFisico.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_cns_hstCrachaFisico.Preencher o campo Nome "${NOME}"

E preencher o campo Crachá Lógico "${CRACHÁ_LÓGICO}"
  resource_cns_hstCrachaFisico.Preencher o campo Crachá Lógico "${CRACHÁ_LÓGICO}"

E selecionar uma opção no campo Data de Início "${DATA_DE_INÍCIO}"
  resource_cns_hstCrachaFisico.Selecionar uma opção no campo Data de Início "${DATA_DE_INÍCIO}"

E preencher o campo Data de Início "${DIA}/${MES}/${ANO}"
  resource_cns_hstCrachaFisico.Preencher o campo Data de Início "${DIA}/${MES}/${ANO}"

E preencher o campo Data de Final "${DIA}/${MES}/${ANO}"
  resource_cns_hstCrachaFisico.Preencher o campo Data de Final "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Hora de Início "${HORA_DE_INÍCIO}"
  resource_cns_hstCrachaFisico.Selecionar uma opção no campo Hora de Início "${HORA_DE_INÍCIO}"

E preencher o campo Hora de Início "${HORA}:${MIN}"
  resource_cns_hstCrachaFisico.Preencher o campo Hora de Início "${HORA}:${MIN}"

E preencher o campo Hora final "${HORA}:${MIN}"
  resource_cns_hstCrachaFisico.Preencher o campo Hora final "${HORA}:${MIN}"

E preencher o campo Crachá Físico "${CRACHÁ_FÍSICO}"
  resource_cns_hstCrachaFisico.Preencher o campo Crachá Físico "${CRACHÁ_FÍSICO}"
