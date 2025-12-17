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

${SCREENNAME}  Status de Presença - Visitante - Filtro
${APPNAME}     cnsConsultaPresencaVisitante
${OBJETIVO}    Verificar todos os campos na tela Status de Presença - Visitante - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Status de Presença - Visitante - Filtro
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
  E verificar a label Pesquisa
  E verificar o campo Presença
  E verificar o campo Empresa
  E verificar o campo Tipo Documento
  E verificar o campo Número Documento
  E verificar o campo Visitado
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
  
E verificar a label Pesquisa
  resource_cnsConsultaPresencaVisitante.Verificar a label Pesquisa

E verificar o campo Presença
  resource_cnsConsultaPresencaVisitante.Verificar o campo Presença

E verificar o campo Empresa
  resource_cnsConsultaPresencaVisitante.Verificar o campo Empresa

E verificar o campo Tipo Documento
  resource_cnsConsultaPresencaVisitante.Verificar o campo Tipo Documento

E verificar o campo Número Documento
  resource_cnsConsultaPresencaVisitante.Verificar o campo Número Documento

E verificar o campo Visitado
  resource_cnsConsultaPresencaVisitante.Verificar o campo Visitado

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
