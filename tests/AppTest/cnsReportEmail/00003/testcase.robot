*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsReportEmail.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Registro de Email Enviado de Processo Automático de Relatório - Filtro
${APPNAME}     cnsReportEmail
${OBJETIVO}    Verificar todos os campos na tela Registro de Email Enviado de Processo Automático de Relatório - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Registro de Email Enviado de Processo Automático de Relatório - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Processo Automático de Relatório", e clicar em Pesquisar
  Então devo visualizar a tela: Registro de Email Enviado de Processo Automático de Relatório - Filtro
  E verificar o campo Enviado
  E verificar o campo Código Processo Relatório
  E verificar o campo Processo Relatório
  E verificar o campo Código do Relatório
  E verificar o campo Relatório
  E verificar o campo Enviado Para
  E verificar o campo Cópia Para
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

Ao digitar a descrição: "Processo Automático de Relatório", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Processo Automático de Relatório

Então devo visualizar a tela: Registro de Email Enviado de Processo Automático de Relatório - Filtro
  resource_cnsReportEmail.Acessar Tela Registro de Email Enviado de Processo Automático de Relatório - Filtro

E verificar o campo Enviado
  resource_cnsReportEmail.Verificar o campo Enviado

E verificar o campo Código Processo Relatório
  resource_cnsReportEmail.Verificar o campo Código Processo Relatório

E verificar o campo Processo Relatório
  resource_cnsReportEmail.Verificar o campo Processo Relatório

E verificar o campo Código do Relatório
  resource_cnsReportEmail.Verificar o campo Código do Relatório

E verificar o campo Relatório
  resource_cnsReportEmail.Verificar o campo Relatório

E verificar o campo Enviado Para
  resource_cnsReportEmail.Verificar o campo Enviado Para

E verificar o campo Cópia Para
  resource_cnsReportEmail.Verificar o campo Cópia Para

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
