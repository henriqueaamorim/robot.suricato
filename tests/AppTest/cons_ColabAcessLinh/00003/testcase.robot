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

${SCREENNAME}  Consulta de Colaboradores Por Linha - Filtro
${APPNAME}     cons_ColabAcessLinh
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores Por Linha - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores Por Linha - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador Por Linha de Ônibus", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores Por Linha - Filtro
  E verificar o campo Crachá
  E verificar o campo Colaborador
  E verificar o campo Nome
  E verificar o campo Empresa
  E verificar o campo Nome da Empresa
  E verificar o campo Tipo de Colaborador
  E verificar o campo Colab. Utiliza Transp. Empresa
  E verificar o campo Número da Linha
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

Então devo visualizar a tela: Consulta de Colaboradores Por Linha - Filtro
  resource_cons_ColabAcessLinh.Acessar Tela Consulta de Colaboradores Por Linha - Filtro

E verificar o campo Crachá
  resource_cons_ColabAcessLinh.Verificar o campo Crachá

E verificar o campo Colaborador
  resource_cons_ColabAcessLinh.Verificar o campo Colaborador

E verificar o campo Nome
  resource_cons_ColabAcessLinh.Verificar o campo Nome

E verificar o campo Empresa
  resource_cons_ColabAcessLinh.Verificar o campo Empresa

E verificar o campo Nome da Empresa
  resource_cons_ColabAcessLinh.Verificar o campo Nome da Empresa

E verificar o campo Tipo de Colaborador
  resource_cons_ColabAcessLinh.Verificar o campo Tipo de Colaborador

E verificar o campo Colab. Utiliza Transp. Empresa
  resource_cons_ColabAcessLinh.Verificar o campo Colab. Utiliza Transp. Empresa

E verificar o campo Número da Linha
  resource_cons_ColabAcessLinh.Verificar o campo Número da Linha

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
