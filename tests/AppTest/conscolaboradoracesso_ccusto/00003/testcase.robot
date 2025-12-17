*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_conscolaboradoracesso_ccusto.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso Colaboradores Centro de Custo - Filtro
${APPNAME}     conscolaboradoracesso_ccusto
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso Colaboradores Centro de Custo - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso Colaboradores Centro de Custo - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Colaborador Acesso com Centro de Custo", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo - Filtro
  E verificar o campo Tipo de Colaborador
  E verificar o campo Empresa
  E verificar o campo Nome
  E verificar o campo Empresa Terceira
  E verificar o campo Centro Custo
  E verificar o campo Data
  E verificar o campo Data/Hora Acesso
  E verificar o campo Tipo
  E verificar o campo Planta
  E verificar o campo Cód. Coletor
  E verificar o campo Matrícula 
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

Ao digitar a descrição: "Consulta Colaborador Acesso com Centro de Custo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Colaborador Acesso com Centro de Custo

Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo - Filtro
  resource_conscolaboradoracesso_ccusto.Acessar Tela Consulta de Acesso Colaboradores Centro de Custo - Filtro

E verificar o campo Tipo de Colaborador
  resource_conscolaboradoracesso_ccusto.Verificar o campo Tipo de Colaborador

E verificar o campo Empresa
  resource_conscolaboradoracesso_ccusto.Verificar o campo Empresa

E verificar o campo Nome
  resource_conscolaboradoracesso_ccusto.Verificar o campo Nome

E verificar o campo Empresa Terceira
  resource_conscolaboradoracesso_ccusto.Verificar o campo Empresa Terceira

E verificar o campo Centro Custo
  resource_conscolaboradoracesso_ccusto.Verificar o campo Centro Custo

E verificar o campo Data
  resource_conscolaboradoracesso_ccusto.Verificar o campo Data

E verificar o campo Data/Hora Acesso
  resource_conscolaboradoracesso_ccusto.Verificar o campo Data/Hora Acesso

E verificar o campo Tipo
  resource_conscolaboradoracesso_ccusto.Verificar o campo Tipo

E verificar o campo Planta
  resource_conscolaboradoracesso_ccusto.Verificar o campo Planta

E verificar o campo Cód. Coletor
  resource_conscolaboradoracesso_ccusto.Verificar o campo Cód. Coletor

E verificar o campo Matrícula 
  resource_conscolaboradoracesso_ccusto.Verificar o campo Matrícula 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
