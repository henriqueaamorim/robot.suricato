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

${SCREENNAME}  Consulta de Acesso Colaboradores Centro de Custo
${APPNAME}     conscolaboradoracesso_ccusto
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso Colaboradores Centro de Custo.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso Colaboradores Centro de Custo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Colaborador Acesso com Centro de Custo", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo
  E verificar a label Data
  E verificar a label Data/Hora Acesso
  E verificar a label Nome Empresa
  E verificar a label Empresa Terceira
  E verificar a label Crachá
  E verificar a label Nome
  E verificar a label Tipo
  E verificar a label Direção
  E verificar a segunda label Direção
  E verificar a label Centro Custo
  E verificar a label Planta
  E verificar a label Descrição
  E verificar a label Cód. Coletor  
  E verificar a label Coletor
  E verificar a label Local
  E verificar a label Função
  E verificar a label Qtde.
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo
  resource_conscolaboradoracesso_ccusto.Acessar Tela Consulta de Acesso Colaboradores Centro de Custo

E verificar a label Data
  resource_conscolaboradoracesso_ccusto.Verificar a label Data

E verificar a label Data/Hora Acesso
  resource_conscolaboradoracesso_ccusto.Verificar a label Data/Hora Acesso

E verificar a label Nome Empresa
  resource_conscolaboradoracesso_ccusto.Verificar a label Nome Empresa

E verificar a label Empresa Terceira
  resource_conscolaboradoracesso_ccusto.Verificar a label Empresa Terceira

E verificar a label Crachá
  resource_conscolaboradoracesso_ccusto.Verificar a label Crachá

E verificar a label Nome
  resource_conscolaboradoracesso_ccusto.Verificar a label Nome

E verificar a label Tipo
  resource_conscolaboradoracesso_ccusto.Verificar a label Tipo

E verificar a label Direção
  resource_conscolaboradoracesso_ccusto.Verificar a label Direção

E verificar a segunda label Direção
  resource_conscolaboradoracesso_ccusto.Verificar a segunda label Direção

E verificar a label Centro Custo
  resource_conscolaboradoracesso_ccusto.Verificar a label Centro Custo

E verificar a label Planta
  resource_conscolaboradoracesso_ccusto.Verificar a label Planta

E verificar a label Descrição
  resource_conscolaboradoracesso_ccusto.Verificar a label Descrição

E verificar a label Cód. Coletor
  resource_conscolaboradoracesso_ccusto.Verificar a label Cód. Coletor

E verificar a label Coletor
  resource_conscolaboradoracesso_ccusto.Verificar a label Coletor

E verificar a label Local
  resource_conscolaboradoracesso_ccusto.Verificar a label Local

E verificar a label Função
  resource_conscolaboradoracesso_ccusto.Verificar a label Função

E verificar a label Qtde.
  resource_conscolaboradoracesso_ccusto.Verificar a label Qtde.

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
