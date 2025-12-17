*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrConsultaPresenca.robot
Resource        ../../../../resource/app/resource_cnsConsultaPresencaVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}    Preencher todos os campos da tela Status de Presença - Visitante - Filtro


*** Test Cases ***

Testcase: Preencher todos os campos da tela Status de Presença - Visitante - Filtro
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Presenças", e clicar em Pesquisar
  Então devo visualizar a tela: Impressão de Relatório
  Ao selecionar a opção "Visitante", e clicar em "OK"
  Então devo visualizar a tela: Status de Presença - Visitante - Filtro
  E selecionar uma opção no campo Presença ""
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo Documento "CNH"
  E preencher o campo Número Documento "ok"
  E preencher o campo Visitado "ok"


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

Ao selecionar a opção "Visitante", e clicar em "OK"
  resource_ctrConsultaPresenca.Clicar na box "Visitante"

Então devo visualizar a tela: Status de Presença - Visitante - Filtro
  resource_cnsConsultaPresencaVisitante.Acessar Tela Status de Presença - Visitante - Filtro
E selecionar uma opção no campo Presença "${PRESENÇA}"
  resource_cnsConsultaPresencaVisitante.Selecionar uma opção no campo Presença "${PRESENÇA}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsConsultaPresencaVisitante.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Documento "${TIPO_DOCUMENTO}"
  resource_cnsConsultaPresencaVisitante.Selecionar uma opção no campo Tipo Documento "${TIPO_DOCUMENTO}"

E preencher o campo Número Documento "${NÚMERO_DOCUMENTO}"
  resource_cnsConsultaPresencaVisitante.Preencher o campo Número Documento "${NÚMERO_DOCUMENTO}"

E preencher o campo Visitado "${VISITADO}"
  resource_cnsConsultaPresencaVisitante.Preencher o campo Visitado "${VISITADO}"
