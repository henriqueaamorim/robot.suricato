*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_crachaMestreDetalhe.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Marcação de Acesso Mestre - Filtro
${APPNAME}     cns_crachaMestreDetalhe
${OBJETIVO}    Verificar todos os campos na tela Relatório de Marcação de Acesso Mestre - Filtro

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Marcação de Acesso Mestre - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Crachá Mestre", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Marcação de Acesso Mestre - Filtro
  E verificar o campo Nome da Empresa
  E verificar o campo Tipo Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Crachá
  E verificar o campo Planta
  E verificar o campo Codin
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

Ao digitar a descrição: "Consulta de Acesso de Crachá Mestre", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Crachá Mestre

Então devo visualizar a tela: Relatório de Marcação de Acesso Mestre - Filtro
  resource_cns_crachaMestreDetalhe.Acessar Tela Relatório de Marcação de Acesso Mestre - Filtro

E verificar o campo Nome da Empresa
  resource_cns_crachaMestreDetalhe.Verificar o campo Nome da Empresa

E verificar o campo Tipo Colaborador
  resource_cns_crachaMestreDetalhe.Verificar o campo Tipo Colaborador

E verificar o campo Matrícula
  resource_cns_crachaMestreDetalhe.Verificar o campo Matrícula

E verificar o campo Nome
  resource_cns_crachaMestreDetalhe.Verificar o campo Nome

E verificar o campo Crachá
  resource_cns_crachaMestreDetalhe.Verificar o campo Crachá

E verificar o campo Planta
  resource_cns_crachaMestreDetalhe.Verificar o campo Planta

E verificar o campo Codin
  resource_cns_crachaMestreDetalhe.Verificar o campo Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
