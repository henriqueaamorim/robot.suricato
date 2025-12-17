*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consEntradaVisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Entrada de Visitantes
${APPNAME}     consEntradaVisitantes
${OBJETIVO}    Verificar todos os campos na tela Relatório de Entrada de Visitantes.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Entrada de Visitantes
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Entrada de Visitantes", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório de Entrada de Visitantes
  E verificar a label Portaria
  E verificar a label Data de Entrada
  E verificar a label Hora de Entrada
  E verificar a label Nome
  E verificar a label Tipo de Contrato
  E verificar a label Matrícula
  E verificar a label Nome Empresa
  E verificar a label Nome Visitante
  E verificar a label Crachá
  E verificar a label Tipo Documento
  E verificar a label Número do Documento
  E verificar a label Empresa Terceira
  E verificar a label Veículo
  E verificar a label Status
  E verificar a label Descrição
  E verificar a label Validade
  E verificar a label Saída
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

Ao digitar a descrição: "Relatório de Entrada de Visitantes", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Entrada de Visitantes

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório de Entrada de Visitantes
  resource_consEntradaVisitantes.Acessar Tela Relatório de Entrada de Visitantes

E verificar a label Portaria
  resource_consEntradaVisitantes.Verificar a label Portaria

E verificar a label Data de Entrada
  resource_consEntradaVisitantes.Verificar a label Data de Entrada

E verificar a label Hora de Entrada
  resource_consEntradaVisitantes.Verificar a label Hora de Entrada

E verificar a label Nome
  resource_consEntradaVisitantes.Verificar a label Nome

E verificar a label Tipo de Contrato
  resource_consEntradaVisitantes.Verificar a label Tipo de Contrato

E verificar a label Matrícula
  resource_consEntradaVisitantes.Verificar a label Matrícula

E verificar a label Nome Empresa
  resource_consEntradaVisitantes.Verificar a label Nome Empresa

E verificar a label Nome Visitante
  resource_consEntradaVisitantes.Verificar a label Nome Visitante

E verificar a label Crachá
  resource_consEntradaVisitantes.Verificar a label Crachá

E verificar a label Tipo Documento
  resource_consEntradaVisitantes.Verificar a label Tipo Documento

E verificar a label Número do Documento
  resource_consEntradaVisitantes.Verificar a label Número do Documento

E verificar a label Empresa Terceira
  resource_consEntradaVisitantes.Verificar a label Empresa Terceira

E verificar a label Veículo
  resource_consEntradaVisitantes.Verificar a label Veículo

E verificar a label Status
  resource_consEntradaVisitantes.Verificar a label Status

E verificar a label Descrição
  resource_consEntradaVisitantes.Verificar a label Descrição

E verificar a label Validade
  resource_consEntradaVisitantes.Verificar a label Validade

E verificar a label Saída
  resource_consEntradaVisitantes.Verificar a label Saída

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
