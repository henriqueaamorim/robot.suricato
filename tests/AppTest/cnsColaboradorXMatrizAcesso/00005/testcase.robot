*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColaboradorXMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta Colaborador por Matriz de Acesso

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta Colaborador por Matriz de Acesso
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo Colaborador "Terceiro"
  E preencher o campo Matrícula "ok"
  E preencher o campo Colaborador "ok"
  E selecionar uma opção no campo Matriz "Matriz"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador x Matriz de Acesso

Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  resource_cnsColaboradorXMatrizAcesso.Acessar Tela Consulta Colaborador por Matriz de Acesso

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsColaboradorXMatrizAcesso.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_cnsColaboradorXMatrizAcesso.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsColaboradorXMatrizAcesso.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Colaborador "${COLABORADOR}"
  resource_cnsColaboradorXMatrizAcesso.Preencher o campo Colaborador "${COLABORADOR}"

E selecionar uma opção no campo Matriz "${MATRIZ}"
  resource_cnsColaboradorXMatrizAcesso.Selecionar uma opção no campo Matriz "${MATRIZ}"
