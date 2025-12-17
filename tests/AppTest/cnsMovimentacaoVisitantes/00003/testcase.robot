*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoVisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Movimentação de Visitantes - Consulta
${APPNAME}     cnsMovimentacaoVisitantes
${OBJETIVO}    Verificar todos os campos na tela Movimentação de Visitantes - Consulta.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Movimentação de Visitantes - Consulta
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Movimentação de Visitantes", e clicar em Pesquisar
  Então devo visualizar a tela: Movimentação de Visitantes - Consulta
  E verificar a label Pesquisa
  E verificar o campo Data de Acesso
  E verificar o campo Hora de Acesso
  E verificar o campo Nome 
  E verificar o campo Tipo de Documento
  E verificar o campo Documento
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

Ao digitar a descrição: "Movimentação de Visitantes", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Movimentação de Visitantes

Então devo visualizar a tela: Movimentação de Visitantes - Consulta
  resource_cnsMovimentacaoVisitantes.Acessar Tela Movimentação de Visitantes - Consulta

E verificar a label Pesquisa
  resource_cnsMovimentacaoVisitantes.Verificar a label Pesquisa

E verificar o campo Data de Acesso
  resource_cnsMovimentacaoVisitantes.Verificar o campo Data de Acesso

E verificar o campo Hora de Acesso
  resource_cnsMovimentacaoVisitantes.Verificar o campo Hora de Acesso

E verificar o campo Nome 
  resource_cnsMovimentacaoVisitantes.Verificar o campo Nome 

E verificar o campo Tipo de Documento
  resource_cnsMovimentacaoVisitantes.Verificar o campo Tipo de Documento

E verificar o campo Documento
  resource_cnsMovimentacaoVisitantes.Verificar o campo Documento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
