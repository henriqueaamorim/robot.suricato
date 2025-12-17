*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cons_ColabAcessLinh.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores Por Linha
${APPNAME}     cons_ColabAcessLinh
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores Por Linha.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores Por Linha
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador Por Linha de Ônibus", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores Por Linha
  E verificar a label Crachá
  E verificar a label Matrícula
  E verificar a label Colaborador
  E verificar a label Nome
  E verificar a label Nome da Empresa
  E verificar a label Tipo de Colaborador
  E verificar a label Situação
  E verificar a label Número da Linha
  E verificar a label Linha
  E verificar a label Colab. Utiliza Transp. Empresa
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

Ao digitar a descrição: "Colaborador Por Linha de Ônibus", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador Por Linha de Ônibus

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores Por Linha
  resource_cons_ColabAcessLinh.Acessar Tela Consulta de Colaboradores Por Linha

E verificar a label Crachá
  resource_cons_ColabAcessLinh.Verificar a label Crachá

E verificar a label Matrícula
  resource_cons_ColabAcessLinh.Verificar a label Matrícula

E verificar a label Colaborador
  resource_cons_ColabAcessLinh.Verificar a label Colaborador

E verificar a label Nome
  resource_cons_ColabAcessLinh.Verificar a label Nome

E verificar a label Nome da Empresa
  resource_cons_ColabAcessLinh.Verificar a label Nome da Empresa

E verificar a label Tipo de Colaborador
  resource_cons_ColabAcessLinh.Verificar a label Tipo de Colaborador

E verificar a label Situação
  resource_cons_ColabAcessLinh.Verificar a label Situação

E verificar a label Número da Linha
  resource_cons_ColabAcessLinh.Verificar a label Número da Linha

E verificar a label Linha
  resource_cons_ColabAcessLinh.Verificar a label Linha

E verificar a label Colab. Utiliza Transp. Empresa
  resource_cons_ColabAcessLinh.Verificar a label Colab. Utiliza Transp. Empresa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
