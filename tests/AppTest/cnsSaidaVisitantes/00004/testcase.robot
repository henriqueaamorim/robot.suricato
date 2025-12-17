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

${SCREENNAME}  Consulta de Saída de Visitantes
${APPNAME}     cnsSaidaVisitantes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Saída de Visitantes.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Saída de Visitantes
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Saída de Visitantes - Consulta", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Saída de Visitantes
  E verificar a label Data da Entrada
  E verificar a label Hora da Entrada
  E verificar a label Data da Saída
  E verificar a label Hora da Saída
  E verificar a label Crachá
  E verificar a label Grupo de Acesso
  E verificar a label Detalhe
  E verificar a label Foto Totem
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Saída de Visitantes
  resource_cnsSaidaVisitantes.Acessar Tela Consulta de Saída de Visitantes

E verificar a label Data da Entrada
  resource_cnsSaidaVisitantes.Verificar a label Data da Entrada

E verificar a label Hora da Entrada
  resource_cnsSaidaVisitantes.Verificar a label Hora da Entrada

E verificar a label Data da Saída
  resource_cnsSaidaVisitantes.Verificar a label Data da Saída

E verificar a label Hora da Saída
  resource_cnsSaidaVisitantes.Verificar a label Hora da Saída

E verificar a label Crachá
  resource_cnsSaidaVisitantes.Verificar a label Crachá

E verificar a label Grupo de Acesso
  resource_cnsSaidaVisitantes.Verificar a label Grupo de Acesso

E verificar a label Detalhe
  resource_cnsSaidaVisitantes.Verificar a label Detalhe

E verificar a label Foto Totem
  resource_cnsSaidaVisitantes.Verificar a label Foto Totem

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
