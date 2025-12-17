*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consTotalHorasTrabalhadas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Relatório Total de Horas Trabalhadas - Filtro.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Relatório Total de Horas Trabalhadas - Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Total de Horas Trabalhadas", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório Total de Horas Trabalhadas - Filtro
  E selecionar uma opção no campo Empresa "MICROPRESS SA"
  E selecionar uma opção no campo Empresa Terceira "MIGUEL E LIZ PIZZARIA DELIVERY ME"
  E selecionar uma opção no campo Planta ""
  E selecionar uma opção no campo Tipo do Colaborador "Empregado"
  E preencher o campo Centro de Custo "1"
  E preencher o campo Data de Acesso Inicial "13/02/2022"
  E preencher o campo Data de Acesso Final "31/02/2022"
  E preencher o campo Nome "Astolfo"
  E preencher o campo Matrícula "333"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Total de Horas Trabalhadas", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Total de Horas Trabalhadas

Então devo visualizar a tela: Relatório Total de Horas Trabalhadas - Filtro
  resource_consTotalHorasTrabalhadas.Acessar Tela Relatório Total de Horas Trabalhadas - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consTotalHorasTrabalhadas.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
  resource_consTotalHorasTrabalhadas.Selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_consTotalHorasTrabalhadas.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_consTotalHorasTrabalhadas.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"
  resource_consTotalHorasTrabalhadas.Preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"

E preencher o campo Data de Acesso Inicial "${DIA}/${MES}/${ANO}"
  resource_consTotalHorasTrabalhadas.Preencher o campo Data de Acesso Inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data de Acesso Final "${DIA}/${MES}/${ANO}"
  resource_consTotalHorasTrabalhadas.Preencher o campo Data de Acesso Final "${DIA}/${MES}/${ANO}"

E preencher o campo Nome "${NOME}"
  resource_consTotalHorasTrabalhadas.Preencher o campo Nome "${NOME}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consTotalHorasTrabalhadas.Preencher o campo Matrícula "${MATRÍCULA}"
