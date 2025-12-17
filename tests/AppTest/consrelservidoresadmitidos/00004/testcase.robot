*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelservidoresadmitidos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores Admitidos
${APPNAME}     consrelservidoresadmitidos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores Admitidos.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores Admitidos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Admitidos", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores Admitidos
  E verificar a label Tipo do Colaborador
  E verificar a label Tipo de Contrato
  E verificar a label Código do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Situação
  E verificar a label Data Admissão
  E verificar a label Empresa
  E verificar a label Empresa Terceira
  E verificar a label Tipo de Terceiro
  E verificar a label Número do Contrato
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

Ao digitar a descrição: "Colaboradores Admitidos", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores Admitidos

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores Admitidos
  resource_consrelservidoresadmitidos.Acessar Tela Consulta de Colaboradores Admitidos

E verificar a label Tipo do Colaborador
  resource_consrelservidoresadmitidos.Verificar a label Tipo do Colaborador

E verificar a label Tipo de Contrato
  resource_consrelservidoresadmitidos.Verificar a label Tipo de Contrato

E verificar a label Código do Colaborador
  resource_consrelservidoresadmitidos.Verificar a label Código do Colaborador

E verificar a label Matrícula
  resource_consrelservidoresadmitidos.Verificar a label Matrícula

E verificar a label Nome
  resource_consrelservidoresadmitidos.Verificar a label Nome

E verificar a label Situação
  resource_consrelservidoresadmitidos.Verificar a label Situação

E verificar a label Data Admissão
  resource_consrelservidoresadmitidos.Verificar a label Data Admissão

E verificar a label Empresa
  resource_consrelservidoresadmitidos.Verificar a label Empresa

E verificar a label Empresa Terceira
  resource_consrelservidoresadmitidos.Verificar a label Empresa Terceira

E verificar a label Tipo de Terceiro
  resource_consrelservidoresadmitidos.Verificar a label Tipo de Terceiro

E verificar a label Número do Contrato
  resource_consrelservidoresadmitidos.Verificar a label Número do Contrato

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
