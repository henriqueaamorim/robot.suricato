*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessamentoLDC.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Processamento LDC - Filtro
${APPNAME}     cnsProcessamentoLDC
${OBJETIVO}    Verificar todos os campos na tela Consulta Processamento LDC - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Processamento LDC - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Processamento LDC", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Processamento LDC - Filtro
  E verificar o campo Tipo de Pessoa
  E verificar o campo Nome
  E verificar o campo Número Documento
  E verificar o campo Empresa
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Crachá
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Status
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

Ao digitar a descrição: "Processamento LDC", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Processamento LDC

Então devo visualizar a tela: Consulta Processamento LDC - Filtro
  resource_cnsProcessamentoLDC.Acessar Tela Consulta Processamento LDC - Filtro

E verificar o campo Tipo de Pessoa
  resource_cnsProcessamentoLDC.Verificar o campo Tipo de Pessoa

E verificar o campo Nome
  resource_cnsProcessamentoLDC.Verificar o campo Nome

E verificar o campo Número Documento
  resource_cnsProcessamentoLDC.Verificar o campo Número Documento

E verificar o campo Empresa
  resource_cnsProcessamentoLDC.Verificar o campo Empresa

E verificar o campo Data
  resource_cnsProcessamentoLDC.Verificar o campo Data

E verificar o campo Hora
  resource_cnsProcessamentoLDC.Verificar o campo Hora

E verificar o campo Crachá
  resource_cnsProcessamentoLDC.Verificar o campo Crachá

E verificar o campo Planta
  resource_cnsProcessamentoLDC.Verificar o campo Planta

E verificar o campo Codin
  resource_cnsProcessamentoLDC.Verificar o campo Codin

E verificar o campo Status
  resource_cnsProcessamentoLDC.Verificar o campo Status

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
