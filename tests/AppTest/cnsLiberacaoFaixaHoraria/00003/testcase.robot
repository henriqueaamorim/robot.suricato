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

${SCREENNAME}  Relatório de Liberação de Faixa Horária - Filtro
${APPNAME}     cnsLiberacaoFaixaHoraria
${OBJETIVO}    Verificar todos os campos na tela Relatório de Liberação de Faixa Horária - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Liberação de Faixa Horária - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Liberação de Faixa Horária", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Liberação de Faixa Horária - Filtro
  E verificar o campo Empresa
  E verificar o campo Tipo Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Crachá
  E verificar o campo Data Liberação
  E verificar o campo Hora Inicial
  E verificar o campo Hora Final
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

Então devo visualizar a tela: Relatório de Liberação de Faixa Horária - Filtro
  resource_cnsLiberacaoFaixaHoraria.Acessar Tela Relatório de Liberação de Faixa Horária - Filtro

E verificar o campo Empresa
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Empresa

E verificar o campo Tipo Colaborador
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Tipo Colaborador

E verificar o campo Matrícula
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Matrícula

E verificar o campo Nome
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Nome

E verificar o campo Crachá
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Crachá

E verificar o campo Data Liberação
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Data Liberação

E verificar o campo Hora Inicial
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Hora Inicial

E verificar o campo Hora Final
  resource_cnsLiberacaoFaixaHoraria.Verificar o campo Hora Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
