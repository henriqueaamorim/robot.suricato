*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/common/resource_btn.robot
Resource        ../../../resource/common/resource_report.robot
Resource        ../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../resource/app/resource_conscolaboradoracesso_ccusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Acesso Colaboradores Centro de Custo e verificar a consulta com filtro e data
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Colaborador Acesso com Centro de Custo", e clicar em Pesquisar
  E Preencher o campo Centro Custo "Teste CC1"
  E preencher o campo Data "02/03/2022"
  E realizar uma captura da tela filtro
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta Colaborador Acesso com Centro de Custo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Colaborador Acesso com Centro de Custo

E Preencher o campo Centro Custo "${CUSTO}"
  resource_conscolaboradoracesso_ccusto.Preencher o campo Centro Custo ${CUSTO}

E preencher o campo Data "${DIA}/${MES}/${ANO}"
  resource_conscolaboradoracesso_ccusto.Setar Campo Data Inicio ${DIA}/${MES}/${ANO}

E realizar uma captura da tela filtro
  resource_conscolaboradoracesso_ccusto.Acessar Tela Consulta de Acesso Colaboradores Centro de Custo - Filtro

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo
  resource_conscolaboradoracesso_ccusto.Acessar Tela Consulta de Acesso Colaboradores Centro de Custo
