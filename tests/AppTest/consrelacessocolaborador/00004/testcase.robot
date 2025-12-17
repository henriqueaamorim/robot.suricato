*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelacessocolaborador.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso
${APPNAME}     consrelacessocolaborador
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acessos dos Colaboradores", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso de Colaboradores
  E verificar a label Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label CPF
  E verificar a label Crachá
  E verificar a label Data
  E verificar a label Hora
  E verificar a label Tipo
  E verificar a label Direção
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Função
  E verificar a label Uso da Marcação
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

Ao digitar a descrição: "Acessos dos Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acessos dos Colaboradores

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso de Colaboradores
  resource_consrelacessocolaborador.Acessar Tela Consulta de Acesso de Colaboradores

E verificar a label Empresa
  resource_consrelacessocolaborador.Verificar a label Empresa

E verificar a label Tipo Colaborador
  resource_consrelacessocolaborador.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_consrelacessocolaborador.Verificar a label Matrícula

E verificar a label Nome
  resource_consrelacessocolaborador.Verificar a label Nome

E verificar a label CPF
  resource_consrelacessocolaborador.Verificar a label CPF

E verificar a label Crachá
  resource_consrelacessocolaborador.Verificar a label Crachá

E verificar a label Data
  resource_consrelacessocolaborador.Verificar a label Data

E verificar a label Hora
  resource_consrelacessocolaborador.Verificar a label Hora

E verificar a label Tipo
  resource_consrelacessocolaborador.Verificar a label Tipo

E verificar a label Direção
  resource_consrelacessocolaborador.Verificar a label Direção

E verificar a label Planta
  resource_consrelacessocolaborador.Verificar a label Planta

E verificar a label Codin
  resource_consrelacessocolaborador.Verificar a label Codin

E verificar a label Função
  resource_consrelacessocolaborador.Verificar a label Função

E verificar a label Uso da Marcação
  resource_consrelacessocolaborador.Verificar a label Uso da Marcação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
