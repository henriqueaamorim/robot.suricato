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

${SCREENNAME}  Consulta de Acesso de Visitantes (Filtro)
${APPNAME}     consacessovisitante
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso de Visitantes (Filtro).

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso de Visitantes (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Visitantes - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso de Visitantes (Filtro)
  E verificar o campo Crachá
  E verificar o campo Nome
  E verificar o campo Colaborador Visitado
  E verificar o campo Matricula do Visitado
  E verificar o campo Código do Colaborador Visitado
  E verificar o campo Tipo Documento
  E verificar o campo Número do Documento
  E verificar o campo Tipo
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Empresa Terceira
  E verificar o campo Local
  E verificar o campo Tipo Visitante
  E verificar o campo Usuário
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

Então devo visualizar a tela: Consulta de Acesso de Visitantes (Filtro)
  resource_consacessovisitante.Acessar Tela Consulta de Acesso de Visitantes (Filtro)

E verificar o campo Crachá
  resource_consacessovisitante.Verificar o campo Crachá

E verificar o campo Nome
  resource_consacessovisitante.Verificar o campo Nome

E verificar o campo Colaborador Visitado
  resource_consacessovisitante.Verificar o campo Colaborador Visitado

E verificar o campo Matricula do Visitado
  resource_consacessovisitante.Verificar o campo Matricula do Visitado

E verificar o campo Código do Colaborador Visitado
  resource_consacessovisitante.Verificar o campo Código do Colaborador Visitado

E verificar o campo Tipo Documento
  resource_consacessovisitante.Verificar o campo Tipo Documento

E verificar o campo Número do Documento
  resource_consacessovisitante.Verificar o campo Número do Documento

E verificar o campo Tipo
  resource_consacessovisitante.Verificar o campo Tipo

E verificar o campo Planta
  resource_consacessovisitante.Verificar o campo Planta

E verificar o campo Codin
  resource_consacessovisitante.Verificar o campo Codin

E verificar o campo Data
  resource_consacessovisitante.Verificar o campo Data

E verificar o campo Hora
  resource_consacessovisitante.Verificar o campo Hora

E verificar o campo Empresa Terceira
  resource_consacessovisitante.Verificar o campo Empresa Terceira

E verificar o campo Local
  resource_consacessovisitante.Verificar o campo Local

E verificar o campo Tipo Visitante
  resource_consacessovisitante.Verificar o campo Tipo Visitante

E verificar o campo Usuário
  resource_consacessovisitante.Verificar o campo Usuário

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
