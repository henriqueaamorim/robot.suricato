*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelservidoresadmitidos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher os campos da tela Valores de Entrada do Modelo.


*** Test Cases ***

Testcase: Preencher os campos da tela Valores de Entrada do Modelo
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Admitidos", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E selecionar uma opção no campo Empresa "HOTEL PORTAL DO SOL LTDA"
  E selecionar uma opção no campo Empresa Terceira "MIGUEL E LIZ PIZZARIA DELIVERY ME"
  E selecionar uma opção no campo Tipo do Colaborador "Terceiro"
  E preencher o campo Matrícula "1"
  E selecionar uma opção no campo Exibir Usuário "Sim"

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

Então devo visualizar a tela: Valores de Entrada do Modelo
  resource_consrelservidoresadmitidos.Acessar Tela Valores de Entrada do Modelo

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consrelservidoresadmitidos.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
  resource_consrelservidoresadmitidos.Selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_consrelservidoresadmitidos.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consrelservidoresadmitidos.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
  resource_consrelservidoresadmitidos.Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
