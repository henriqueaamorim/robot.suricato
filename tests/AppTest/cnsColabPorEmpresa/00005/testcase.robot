*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColabPorEmpresa.robot
Resource    ../../cns_hstCrachaFisico/00004/testcase.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Colaboradores Por Empresa - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Por Empresa", e clicar em Pesquisar
  Então devo visualizar a tela: Colaboradores Por Empresa - Filtro
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo "Terceiro"
  E preencher o campo Matrícula "ok"
  E preencher o campo Nome do Colaborador "ok" 
  E preencher o campo Crachá "ok"

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

Então devo visualizar a tela: Colaboradores Por Empresa - Filtro
  resource_cnsColabPorEmpresa.Acessar Tela Colaboradores Por Empresa - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsColabPorEmpresa.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo "${TIPO}"
  resource_cnsColabPorEmpresa.Selecionar uma opção no campo Tipo "${TIPO}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsColabPorEmpresa.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome do Colaborador "${NOME_DO_COLABORADOR}"
  resource_cnsColabPorEmpresa.Preencher o campo Nome do Colaborador "${NOME_DO_COLABORADOR}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_cnsColabPorEmpresa.Preencher o campo Crachá "${CRACHÁ}"
