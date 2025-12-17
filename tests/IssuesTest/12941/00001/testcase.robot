*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consacessocolaborador.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Acesso Colaborador/Terceiro/Parceiro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acessos dos Colaboradores - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso (Filtro)
  E Selecionar o Campo Tipo de Colaborador Terceiro
  E Preencher o Campo Data Inicio "20/07/2022"
  E Preencher o Campo Data Fim "20/07/2022"
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaborador/Terceiro/Parceiro

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Acessos dos Colaboradores - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acessos dos Colaboradores - Consulta

Então devo visualizar a tela: Consulta de Acesso (Filtro)
  resource_consacessocolaborador.Acessar Tela Consulta de Acesso (Filtro)

E Selecionar o Campo Tipo de Colaborador Terceiro
  resource_consacessocolaborador.Selecionar o Campo Tipo de Colaborador Terceiro

E Preencher o Campo Data Inicio "${DIA}/${MES}/${ANO}"
  resource_consacessocolaborador.Setar Campo Data Inicio ${DIA}/${MES}/${ANO}

E Preencher o Campo Data Fim "${DIA}/${MES}/${ANO}"
  resource_consacessocolaborador.Setar Campo Data Fim ${DIA}/${MES}/${ANO}

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaborador/Terceiro/Parceiro
  resource_consacessocolaborador.Acessar Tela Consulta de Acesso Colaborador/Terceiro/Parceiro
