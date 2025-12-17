*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso de Visitantes
${APPNAME}     consacessovisitante
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso de Visitantes.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso de Visitantes
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Visitantes - Consulta", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso de Visitantes
  E verificar a label Crachá
  E verificar a label Empresa Terceira
  E verificar a label Nome
  E verificar a label Tipo Documento
  E verificar a label Número do Documento
  E verificar a label Tipo Visitante
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Local
  E verificar a label Tipo Colaborador
  E verificar a label Matricula do Visitado
  E verificar a label Colaborador Visitado
  E verificar a label Direção
  E verificar a label Tipo
  E verificar a label Data/Hora Acesso
  E verificar a label Usuário
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

Ao digitar a descrição: "Acesso de Visitantes - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso de Visitantes - Consulta

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso de Visitantes
  resource_consacessovisitante.Acessar Tela Consulta de Acesso de Visitantes

E verificar a label Crachá
  resource_consacessovisitante.Verificar a label Crachá

E verificar a label Empresa Terceira
  resource_consacessovisitante.Verificar a label Empresa Terceira

E verificar a label Nome
  resource_consacessovisitante.Verificar a label Nome

E verificar a label Tipo Documento
  resource_consacessovisitante.Verificar a label Tipo Documento

E verificar a label Número do Documento
  resource_consacessovisitante.Verificar a label Número do Documento

E verificar a label Tipo Visitante
  resource_consacessovisitante.Verificar a label Tipo Visitante

E verificar a label Planta
  resource_consacessovisitante.Verificar a label Planta

E verificar a label Codin
  resource_consacessovisitante.Verificar a label Codin

E verificar a label Local
  resource_consacessovisitante.Verificar a label Local

E verificar a label Tipo Colaborador
  resource_consacessovisitante.Verificar a label Tipo Colaborador

E verificar a label Matricula do Visitado
  resource_consacessovisitante.Verificar a label Matricula do Visitado

E verificar a label Colaborador Visitado
  resource_consacessovisitante.Verificar a label Colaborador Visitado

E verificar a label Direção
  resource_consacessovisitante.Verificar a label Direção

E verificar a label Tipo
  resource_consacessovisitante.Verificar a label Tipo

E verificar a label Data/Hora Acesso
  resource_consacessovisitante.Verificar a label Data/Hora Acesso

E verificar a label Usuário
  resource_consacessovisitante.Verificar a label Usuário

E verificar a label ON/OFF
  resource_consacessovisitante.Verificar a label ON/OFF

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
