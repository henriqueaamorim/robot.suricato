*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsLiberacaoFaixaHoraria.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Liberação de Faixa Horária
${APPNAME}     cnsLiberacaoFaixaHoraria
${OBJETIVO}    Verificar todos os campos na tela Relatório de Liberação de Faixa Horária.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Liberação de Faixa Horária
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Liberação de Faixa Horária", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório de Liberação de Faixa Horária
  E verificar a label Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Crachá
  E verificar a label Data de Liberação Inicial
  E verificar a label Data de Liberação Final
  E verificar a label Hora Inicial
  E verificar a label Hora Final
  E verificar a label Empresa Terceira
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

Ao digitar a descrição: "Liberação de Faixa Horária", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Liberação de Faixa Horária

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório de Liberação de Faixa Horária
  resource_cnsLiberacaoFaixaHoraria.Acessar Tela Relatório de Liberação de Faixa Horária

E verificar a label Empresa
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Empresa

E verificar a label Tipo Colaborador
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Matrícula

E verificar a label Nome
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Nome

E verificar a label Crachá
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Crachá

E verificar a label Data de Liberação Inicial
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Data de Liberação Inicial

E verificar a label Data de Liberação Final
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Data de Liberação Final

E verificar a label Hora Inicial
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Hora Inicial

E verificar a label Hora Final
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Hora Final

E verificar a label Empresa Terceira
  resource_cnsLiberacaoFaixaHoraria.Verificar a label Empresa Terceira

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
