*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_conscolaboradoracesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
  
${SCREENNAME}  Consulta de Acesso Colaboradores
${APPNAME}     conscolaboradoracesso
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso Colaboradores

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta colaborador acesso", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaboradores
  E verificar a label Nome Empresa
  E verificar a label Data
  E verificar a label Data/Hora Acesso
  E verificar a label Matrícula
  E verificar a label Tipo de Usuário
  E verificar a label Nome
  E verificar a label Desc. Colaborador
  E verificar a label Descrição
  E verificar a label Cód. Coletor
  E verificar a label Coletor
  E verificar a label Local
  E verificar a label Permissão de Acesso
  E verificar a label Direção
  E verificar a label Origem Coleta
  E verificar a label Uso da Marcação
  E verificar a label Mensagem
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

Ao digitar a descrição: "Consulta colaborador acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta colaborador acesso

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaboradores
  resource_conscolaboradoracesso.Acessar Tela Consulta de Acesso Colaboradores

E verificar a label Nome Empresa
  resource_conscolaboradoracesso.Verificar a label Nome Empresa

E verificar a label Data
  resource_conscolaboradoracesso.Verificar a label Data

E verificar a label Data/Hora Acesso
  resource_conscolaboradoracesso.Verificar a label Data/Hora Acesso

E verificar a label Matrícula
  resource_conscolaboradoracesso.Verificar a label Matrícula

E verificar a label Tipo de Usuário
  resource_conscolaboradoracesso.Verificar a label Tipo de Usuário

E verificar a label Nome
  resource_conscolaboradoracesso.Verificar a label Nome

E verificar a label Desc. Colaborador
  resource_conscolaboradoracesso.Verificar a label Desc. Colaborador

E verificar a label Descrição
  resource_conscolaboradoracesso.Verificar a label Descrição

E verificar a label Cód. Coletor
  resource_conscolaboradoracesso.Verificar a label Cód. Coletor

E verificar a label Coletor
  resource_conscolaboradoracesso.Verificar a label Coletor

E verificar a label Local
  resource_conscolaboradoracesso.Verificar a label Local

E verificar a label Permissão de Acesso
  resource_conscolaboradoracesso.Verificar a label Permissão de Acesso

E verificar a label Direção
  resource_conscolaboradoracesso.Verificar a label Direção

E verificar a label Origem Coleta
  resource_conscolaboradoracesso.Verificar a label Origem Coleta

E verificar a label Uso da Marcação
  resource_conscolaboradoracesso.Verificar a label Uso da Marcação

E verificar a label Mensagem
  resource_conscolaboradoracesso.Verificar a label Mensagem

E verificar a label Função
  resource_conscolaboradoracesso.Verificar a label Função

E verificar a label Qtde.
  resource_conscolaboradoracesso.Verificar a label Qtde.

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
