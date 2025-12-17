*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsWSGLog.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Log de Integração com WebService Guardian
${APPNAME}     cnsWSGLog
${OBJETIVO}    Verificar todos os campos na tela Log de Integração com WebService Guardian.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Log de Integração com WebService Guardian
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Log de Integração com WebService Guardian", e clicar em Pesquisar
  Então devo visualizar a tela: Log de Integração com WebService Guardian
  E verificar a label Código Visita
  E verificar a label Código
  E verificar a label Ticket
  E verificar a label Data/Hora
  E verificar a label Operação
  E verificar a label Versão WS
  E verificar a label Status de Erro
  E verificar a label Mensagem de Retorno
  E verificar a label Detalhes
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

Ao digitar a descrição: "Log de Integração com WebService Guardian", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Log de Integração com WebService Guardian

Então devo visualizar a tela: Log de Integração com WebService Guardian
  resource_cnsWSGLog.Acessar Tela Log de Integração com WebService Guardian

E verificar a label Código Visita
  resource_cnsWSGLog.Verificar a label Código Visita

E verificar a label Código
  resource_cnsWSGLog.Verificar a label Código

E verificar a label Ticket
  resource_cnsWSGLog.Verificar a label Ticket

E verificar a label Data/Hora
  resource_cnsWSGLog.Verificar a label Data/Hora

E verificar a label Operação
  resource_cnsWSGLog.Verificar a label Operação

E verificar a label Versão WS
  resource_cnsWSGLog.Verificar a label Versão WS

E verificar a label Status de Erro
  resource_cnsWSGLog.Verificar a label Status de Erro

E verificar a label Mensagem de Retorno
  resource_cnsWSGLog.Verificar a label Mensagem de Retorno

E verificar a label Detalhes
  resource_cnsWSGLog.Verificar a label Detalhes

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
