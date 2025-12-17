*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_crachaMestreDetalhe.robot
Resource    ../../../../resource/app/resource_frmHistoricoFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Relatório de Marcação de Acesso Mestre - Filtro

*** Test Cases ***

Testcase: Acessar Tela Relatório de Marcação de Acesso Mestre - Filtro
  [Tags]  REGISTER POLYVALENT
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Crachá Mestre", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Marcação de Acesso Mestre - Filtro
  E preencher o campo Nome da Empresa "EMPRESA"
  E selecionar uma opção no campo Tipo Colaborador "COL"
  E preencher o campo Matrícula "MAT"
  E preencher o campo Nome "NOE"
  E preencher o campo Crachá "CracháCH"
  E selecionar uma opção no campo Planta "Planta"
  E selecionar uma opção no campo Codin "CODIN"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Acesso de Crachá Mestre", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Crachá Mestre

Então devo visualizar a tela: Relatório de Marcação de Acesso Mestre - Filtro
  resource_cns_crachaMestreDetalhe.Acessar Tela Relatório de Marcação de Acesso Mestre - Filtro

E preencher o campo Nome da Empresa "${NOME_DA_EMPRESA}"
  resource_cns_crachaMestreDetalhe.Preencher o campo Nome da Empresa "${NOME_DA_EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_cns_crachaMestreDetalhe.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cns_crachaMestreDetalhe.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_cns_crachaMestreDetalhe.Preencher o campo Nome "${NOME}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_cns_crachaMestreDetalhe.Preencher o campo Crachá "${CRACHÁ}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_cns_crachaMestreDetalhe.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_cns_crachaMestreDetalhe.Selecionar uma opção no campo Codin "${CODIN}"
