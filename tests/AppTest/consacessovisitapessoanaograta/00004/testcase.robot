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

${SCREENNAME}  Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
${APPNAME}     consacessovisitapessoanaograta
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Visitantes Consulta Pessoa Não Grata", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
  E verificar a label Crachá
  E verificar a label Empresa Terceira
  E verificar a label Nome
  E verificar a label Tipo do Documento
  E verificar a label Num. do Documento
  E verificar a label Tipo Visitante
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Local
  E verificar a label Matr. do Visitado
  E verificar a label Visitado
  E verificar a label Tipo
  E verificar a label Data/Hora Acesso
  E verificar a label Usuário
  E verificar a label ON/OFF
  E verificar a label ObseVisi
  E verificar a label Motivo
  E verificar a label ProcNgrata
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
  resource_consacessovisitapessoanaograta.Acessar Tela Consulta de Acesso de Visitantes Consulta Pessoa Não Grata

E verificar a label Crachá
  resource_consacessovisitapessoanaograta.Verificar a label Crachá

E verificar a label Empresa Terceira
  resource_consacessovisitapessoanaograta.Verificar a label Empresa Terceira

E verificar a label Nome
  resource_consacessovisitapessoanaograta.Verificar a label Nome

E verificar a label Tipo do Documento
  resource_consacessovisitapessoanaograta.Verificar a label Tipo do Documento

E verificar a label Num. do Documento
  resource_consacessovisitapessoanaograta.Verificar a label Num. do Documento

E verificar a label Tipo Visitante
  resource_consacessovisitapessoanaograta.Verificar a label Tipo Visitante

E verificar a label Planta
  resource_consacessovisitapessoanaograta.Verificar a label Planta

E verificar a label Codin
  resource_consacessovisitapessoanaograta.Verificar a label Codin

E verificar a label Local
  resource_consacessovisitapessoanaograta.Verificar a label Local

E verificar a label Matr. do Visitado
  resource_consacessovisitapessoanaograta.Verificar a label Matr. do Visitado

E verificar a label Visitado
  resource_consacessovisitapessoanaograta.Verificar a label Visitado

E verificar a label Tipo
  resource_consacessovisitapessoanaograta.Verificar a label Tipo

E verificar a label Data/Hora Acesso
  resource_consacessovisitapessoanaograta.Verificar a label Data/Hora Acesso

E verificar a label Usuário
  resource_consacessovisitapessoanaograta.Verificar a label Usuário

E verificar a label ON/OFF
  resource_consacessovisitapessoanaograta.Verificar a label ON/OFF

E verificar a label ObseVisi
  resource_consacessovisitapessoanaograta.Verificar a label ObseVisi

E verificar a label Motivo
  resource_consacessovisitapessoanaograta.Verificar a label Motivo

E verificar a label ProcNgrata
  resource_consacessovisitapessoanaograta.Verificar a label ProcNgrata

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
