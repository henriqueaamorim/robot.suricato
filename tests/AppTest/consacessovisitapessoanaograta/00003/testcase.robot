*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consacessovisitapessoanaograta.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro
${APPNAME}     consacessovisitapessoanaograta
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Visitantes Consulta Pessoa Não Grata", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro
  E verificar a label Pesquisa
  E verificar o campo Crachá
  E verificar o campo Nome
  E verificar o campo Visitado
  E verificar o campo Matr. do Visitado
  E verificar o campo Códi do Visitado
  E verificar o campo Tipo do Documento
  E verificar o campo Num. do Documento
  E verificar o campo Tipo
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Empresa Terceira
  E verificar o campo Local
  E verificar o campo Tipo Visitante
  E verificar o campo Usuário
  E verificar o campo Dias Normais
  E verificar o campo Grupo de Acesso Sábado
  E verificar o campo Grupo de Acesso Domingo
  E verificar o campo Grupo de Acesso Feriado
  E verificar o campo Grupo de Acesso Visitante
  E verificar o campo Exibir Usuário
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

Ao digitar a descrição: "Consulta de Acesso de Visitantes Consulta Pessoa Não Grata", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata

Então devo visualizar a tela: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro
  resource_consacessovisitapessoanaograta.Acessar Tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata - Filtro

E verificar a label Pesquisa
  resource_consacessovisitapessoanaograta.Verificar a label Pesquisa

E verificar o campo Crachá
  resource_consacessovisitapessoanaograta.Verificar o campo Crachá

E verificar o campo Nome
  resource_consacessovisitapessoanaograta.Verificar o campo Nome

E verificar o campo Visitado
  resource_consacessovisitapessoanaograta.Verificar o campo Visitado

E verificar o campo Matr. do Visitado
  resource_consacessovisitapessoanaograta.Verificar o campo Matr. do Visitado

E verificar o campo Códi do Visitado
  resource_consacessovisitapessoanaograta.Verificar o campo Códi do Visitado

E verificar o campo Tipo do Documento
  resource_consacessovisitapessoanaograta.Verificar o campo Tipo do Documento

E verificar o campo Num. do Documento
  resource_consacessovisitapessoanaograta.Verificar o campo Num. do Documento

E verificar o campo Tipo
  resource_consacessovisitapessoanaograta.Verificar o campo Tipo

E verificar o campo Planta
  resource_consacessovisitapessoanaograta.Verificar o campo Planta

E verificar o campo Codin
  resource_consacessovisitapessoanaograta.Verificar o campo Codin

E verificar o campo Data
  resource_consacessovisitapessoanaograta.Verificar o campo Data

E verificar o campo Hora
  resource_consacessovisitapessoanaograta.Verificar o campo Hora

E verificar o campo Empresa Terceira
  resource_consacessovisitapessoanaograta.Verificar o campo Empresa Terceira

E verificar o campo Local
  resource_consacessovisitapessoanaograta.Verificar o campo Local

E verificar o campo Tipo Visitante
  resource_consacessovisitapessoanaograta.Verificar o campo Tipo Visitante

E verificar o campo Usuário
  resource_consacessovisitapessoanaograta.Verificar o campo Usuário

E verificar o campo Dias Normais
  resource_consacessovisitapessoanaograta.Verificar o campo Dias Normais

E verificar o campo Grupo de Acesso Sábado
  resource_consacessovisitapessoanaograta.Verificar o campo Grupo de Acesso Sábado

E verificar o campo Grupo de Acesso Domingo
  resource_consacessovisitapessoanaograta.Verificar o campo Grupo de Acesso Domingo

E verificar o campo Grupo de Acesso Feriado
  resource_consacessovisitapessoanaograta.Verificar o campo Grupo de Acesso Feriado

E verificar o campo Grupo de Acesso Visitante
  resource_consacessovisitapessoanaograta.Verificar o campo Grupo de Acesso Visitante

E verificar o campo Exibir Usuário
  resource_consacessovisitapessoanaograta.Verificar o campo Exibir Usuário

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
