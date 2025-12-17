*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrconsacessocolaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso Colaborador/Terceiro/Parceiro
${APPNAME}     ctrconsacessocolaborador
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso Colaborador/Terceiro/Parceiro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso Colaborador/Terceiro/Parceiro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Controle para a Consulta de Acesso de Colaborador", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaborador, Terceiro e Parceiro
  E verificar a label Data/Hora Acesso
  E verificar a label Empresa
  E verificar a label Empresa Terceira
  E verificar a label Tipo de Colaborador
  E verificar a label Matrícula
  E verificar a label Crachá
  E verificar a label Nome
  E verificar a label Número do CPF
  E verificar a label Filial
  E verificar a label Matrícula Responsável Terceiro
  E verificar a label Nome Responsável Terceiro
  E verificar a label Tipo Acesso
  E verificar a label Direção
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Função
  E verificar a label Qtde.
  E verificar a label Uso da Marcação
  E verificar a label ON/OFF
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

Ao digitar a descrição: "Controle para a Consulta de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Controle para a Consulta de Acesso de Colaborador

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaborador, Terceiro e Parceiro
  resource_ctrconsacessocolaborador.Acessar Tela Consulta de Acesso Colaborador/Terceiro/Parceiro

E verificar a label Data/Hora Acesso
  resource_ctrconsacessocolaborador.Verificar a label Data/Hora Acesso

E verificar a label Empresa
  resource_ctrconsacessocolaborador.Verificar a label Empresa

E verificar a label Empresa Terceira
  resource_ctrconsacessocolaborador.Verificar a label Empresa Terceira

E verificar a label Tipo de Colaborador
  resource_ctrconsacessocolaborador.Verificar a label Tipo de Colaborador

E verificar a label Matrícula
  resource_ctrconsacessocolaborador.Verificar a label Matrícula

E verificar a label Crachá
  resource_ctrconsacessocolaborador.Verificar a label Crachá

E verificar a label Nome
  resource_ctrconsacessocolaborador.Verificar a label Nome

E verificar a label Número do CPF
  resource_ctrconsacessocolaborador.Verificar a label Número do CPF

E verificar a label Filial
  resource_ctrconsacessocolaborador.Verificar a label Filial

E verificar a label Matrícula Responsável Terceiro
  resource_ctrconsacessocolaborador.Verificar a label Matrícula Responsável Terceiro

E verificar a label Nome Responsável Terceiro
  resource_ctrconsacessocolaborador.Verificar a label Nome Responsável Terceiro

E verificar a label Tipo Acesso
  resource_ctrconsacessocolaborador.Verificar a label Tipo Acesso

E verificar a label Direção
  resource_ctrconsacessocolaborador.Verificar a label Direção

E verificar a label Planta
  resource_ctrconsacessocolaborador.Verificar a label Planta

E verificar a label Codin
  resource_ctrconsacessocolaborador.Verificar a label Codin

E verificar a label Função
  resource_ctrconsacessocolaborador.Verificar a label Função

E verificar a label Qtde.
  resource_ctrconsacessocolaborador.Verificar a label Qtde.

E verificar a label Uso da Marcação
  resource_ctrconsacessocolaborador.Verificar a label Uso da Marcação

E verificar a label ON/OFF
  resource_ctrconsacessocolaborador.Verificar a label ON/OFF

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
