*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsAcessosDosColaboradores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acessos dos Colaboradores - Filtro
${APPNAME}     cnsAcessosDosColaboradores
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acessos dos Colaboradores - Filtro.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Acessos dos Colaboradores - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Empresa
  E verificar o campo Nome
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

Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Colaborador

Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  resource_cnsAcessosDosColaboradores.Acessar Tela Consulta de Acessos dos Colaboradores - Filtro

E verificar o campo Data
  resource_cnsAcessosDosColaboradores.Verificar o campo Data

E verificar o campo Hora
  resource_cnsAcessosDosColaboradores.Verificar o campo Hora

E verificar o campo Planta
  resource_cnsAcessosDosColaboradores.Verificar o campo Planta

E verificar o campo Codin
  resource_cnsAcessosDosColaboradores.Verificar o campo Codin

E verificar o campo Empresa
  resource_cnsAcessosDosColaboradores.Verificar o campo Empresa

E verificar o campo Nome
  resource_cnsAcessosDosColaboradores.Verificar o campo Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
