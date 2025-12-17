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

${SCREENNAME}  Status de Presença - Visitante
${APPNAME}     cnsConsultaPresencaVisitante
${OBJETIVO}    Verificar todos os campos na tela Status de Presença - Visitante


*** Test Cases ***

Testcase: Verificar todos os campos na tela Status de Presença - Visitante
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Presenças", e clicar em Pesquisar
  Então devo visualizar a tela: Impressão de Relatório
  Ao selecionar a opção "Visitante", e clicar em "OK"
  Então devo visualizar a tela: Status de Presença - Visitante - Filtro
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Status de Presença - Visitante
  E verificar a label Crachá
  E verificar a label Visitante
  E verificar a label Tipo Documento
  E verificar a label Número Documento
  E verificar a label Entrada
  E verificar a label Validade
  E verificar a label Visitado
  E verificar a label Tipo de Colaborador
  E verificar a label Matrícula
  E verificar se existe o campo Teste

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

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Status de Presença - Visitante
  resource_cnsConsultaPresencaVisitante.Acessar Tela Status de Presença - Visitante
E verificar a label Crachá
  resource_cnsConsultaPresencaVisitante.Verificar a label Crachá

E verificar a label Visitante
  resource_cnsConsultaPresencaVisitante.Verificar a label Visitante

E verificar a label Tipo Documento
  resource_cnsConsultaPresencaVisitante.Verificar a label Tipo Documento

E verificar a label Número Documento
  resource_cnsConsultaPresencaVisitante.Verificar a label Número Documento

E verificar a label Entrada
  resource_cnsConsultaPresencaVisitante.Verificar a label Entrada

E verificar a label Validade
  resource_cnsConsultaPresencaVisitante.Verificar a label Validade

E verificar a label Visitado
  resource_cnsConsultaPresencaVisitante.Verificar a label Visitado

E verificar a label Tipo de Colaborador
  resource_cnsConsultaPresencaVisitante.Verificar a label Tipo de Colaborador

E verificar a label Matrícula
  resource_cnsConsultaPresencaVisitante.Verificar a label Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
