*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrConsultaPresenca.robot
Resource        ../../../../resource/app/resource_cnsConsultaPresencaColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Status de Presença - Colaborador
${APPNAME}     cnsConsultaPresencaColaborador
${OBJETIVO}    Verificar todos os campos na tela Status de Presença - Colaborador.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Status de Presença - Colaborador
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Presenças", e clicar em Pesquisar
  Então devo visualizar a tela: Impressão de Relatório
  Ao selecionar a opção "Colaborador", e clicar em "OK"
  Então devo visualizar a tela: Status de Presença - Colaborador - Filtro
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Status de Presença - Colaborador
  E verificar a label Colaborador
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Histórico de Local
  E verificar a label Crachá Atual
  E verificar a label Crachá Titular
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

Ao selecionar a opção "Colaborador", e clicar em "OK"
  resource_ctrConsultaPresenca.Clicar na box "Colaborador"

Então devo visualizar a tela: Status de Presença - Colaborador - Filtro
  resource_cnsConsultaPresencaColaborador.Acessar Tela Status de Presença - Colaborador - Filtro

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Status de Presença - Colaborador
  resource_cnsConsultaPresencaColaborador.Acessar Tela Status de Presença - Colaborador

E verificar a label Colaborador
  resource_cnsConsultaPresencaColaborador.Verificar a label Colaborador

E verificar a label Tipo Colaborador
  resource_cnsConsultaPresencaColaborador.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_cnsConsultaPresencaColaborador.Verificar a label Matrícula

E verificar a label Histórico de Local
  resource_cnsConsultaPresencaColaborador.Verificar a label Histórico de Local

E verificar a label Crachá Atual
  resource_cnsConsultaPresencaColaborador.Verificar a label Crachá Atual

E verificar a label Crachá Titular
  resource_cnsConsultaPresencaColaborador.Verificar a label Crachá Titular

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
