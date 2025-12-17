*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColabPorEmpresa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Colaboradores Por Empresa
${APPNAME}     cnsColabPorEmpresa
${OBJETIVO}    Verificar todos os campos na tela Colaboradores Por Empresa.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Colaboradores Por Empresa
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Por Empresa", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Colaboradores Por Empresa
  E verificar a label Nome da Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Nome do Colaborador
  E verificar a label Crachá
  E verificar a label PIS
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

Ao digitar a descrição: "Colaboradores Por Empresa", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores Por Empresa

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Colaboradores Por Empresa
  resource_cnsColabPorEmpresa.Acessar Tela Colaboradores Por Empresa

E verificar a label Nome da Empresa
  resource_cnsColabPorEmpresa.Verificar a label Nome da Empresa

E verificar a label Tipo Colaborador
  resource_cnsColabPorEmpresa.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_cnsColabPorEmpresa.Verificar a label Matrícula

E verificar a label Nome do Colaborador
  resource_cnsColabPorEmpresa.Verificar a label Nome do Colaborador

E verificar a label Crachá
  resource_cnsColabPorEmpresa.Verificar a label Crachá

E verificar a label PIS
  resource_cnsColabPorEmpresa.Verificar a label PIS

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
