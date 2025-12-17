*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrConsultaPresenca.robot
Resource        ../../../../resource/app/resource_cnsConsultaPresencaColaborador.robot
Resource    ../../cns_hstCrachaFisico/00004/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Status de Presença - Colaborador - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Presenças", e clicar em Pesquisar
  Então devo visualizar a tela: Impressão de Relatório
  Ao selecionar a opção "Colaborador", e clicar em "OK"
  Então devo visualizar a tela: Status de Presença - Colaborador - Filtro
  E selecionar uma opção no campo Presença "Não"
  E selecionar uma opção no campo Empresa "Alfandega"
  E preencher o campo Matrícula "ok"
  E preencher o campo Crachá Atual "ok"
  E preencher o campo Crachá Titular "ok"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Presenças", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Presenças

Então devo visualizar a tela: Impressão de Relatório
  resource_ctrConsultaPresenca.Acessar Tela Impressão de Relatório

Ao selecionar a opção "Colaborador", e clicar em "OK"
  resource_ctrConsultaPresenca.Clicar na box "Colaborador"

Então devo visualizar a tela: Status de Presença - Colaborador - Filtro
  resource_cnsConsultaPresencaColaborador.Acessar Tela Status de Presença - Colaborador - Filtro

E selecionar uma opção no campo Presença "${PRESENÇA}"
  resource_cnsConsultaPresencaColaborador.Selecionar uma opção no campo Presença "${PRESENÇA}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsConsultaPresencaColaborador.Selecionar uma opção no campo Empresa "${EMPRESA}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsConsultaPresencaColaborador.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Crachá Atual "${CRACHÁ_ATUAL}"
  resource_cnsConsultaPresencaColaborador.Preencher o campo Crachá Atual "${CRACHÁ_ATUAL}"

E preencher o campo Crachá Titular "${CRACHÁ_TITULAR}"
  resource_cnsConsultaPresencaColaborador.Preencher o campo Crachá Titular "${CRACHÁ_TITULAR}"
