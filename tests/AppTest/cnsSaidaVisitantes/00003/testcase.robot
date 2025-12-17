*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsSaidaVisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Saída de Visitantes (Filtro)
${APPNAME}     cnsSaidaVisitantes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Saída de Visitantes (Filtro).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Saída de Visitantes (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Saída de Visitantes - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Saída de Visitantes (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Tipo Documento
  E verificar o campo Número do Documento
  E verificar o campo Código da Empresa do Visitante
  E verificar o campo Nome
  E verificar o campo Data da Entrada
  E verificar o campo Data da Saída
  #E verificar o campo Tipo da Visita
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

Ao digitar a descrição: "Saída de Visitantes - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório:Saída de Visitantes - Consulta

Então devo visualizar a tela: Consulta de Saída de Visitantes (Filtro)
  resource_cnsSaidaVisitantes.Acessar Tela Consulta de Saída de Visitantes

E verificar a label Pesquisa
  resource_cnsSaidaVisitantes.Verificar a label Pesquisa

E verificar o campo Tipo Documento
  resource_cnsSaidaVisitantes.Verificar o campo Tipo Documento

E verificar o campo Número do Documento
  resource_cnsSaidaVisitantes.Verificar o campo Número do Documento

E verificar o campo Código da Empresa do Visitante
  resource_cnsSaidaVisitantes.Verificar o campo Código da Empresa do Visitante

E verificar o campo Nome
  resource_cnsSaidaVisitantes.Verificar o campo Nome

E verificar o campo Data da Entrada
  resource_cnsSaidaVisitantes.Verificar o campo Data da Entrada

E verificar o campo Data da Saída
  resource_cnsSaidaVisitantes.Verificar o campo Data da Saída

E verificar o campo Tipo da Visita
  resource_cnsSaidaVisitantes.Verificar o campo Tipo da Visita

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
