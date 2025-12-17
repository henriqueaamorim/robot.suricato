*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consMarcacaoMobile.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Marcação de Ponto Codin Mobile (Filtro)
${APPNAME}     consMarcacaoMobile
${OBJETIVO}    Verificar todos os campos na tela Marcação de Ponto Codin Mobile (Filtro).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Marcação de Ponto Codin Mobile (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Marcação de Ponto Codin Mobile", e clicar em Pesquisar
  Então devo visualizar a tela: Marcação de Ponto Codin Mobile (Filtro)
  E verificar o campo Empresa
  E verificar o campo Colaborador
  E verificar o campo Matricula
  E verificar o campo Mac Address
  E verificar o campo Data
  E verificar o campo Fake GPS
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

Ao digitar a descrição: "Marcação de Ponto Codin Mobile", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Marcação de Ponto Codin Mobile

Então devo visualizar a tela: Marcação de Ponto Codin Mobile (Filtro)
  resource_consMarcacaoMobile.Acessar Tela Marcação de Ponto Codin Mobile (Filtro)

E verificar o campo Empresa
  resource_consMarcacaoMobile.Verificar o campo Empresa

E verificar o campo Colaborador
  resource_consMarcacaoMobile.Verificar o campo Colaborador

E verificar o campo Matricula
  resource_consMarcacaoMobile.Verificar o campo Matricula

E verificar o campo Mac Address
  resource_consMarcacaoMobile.Verificar o campo Mac Address

E verificar o campo Data
  resource_consMarcacaoMobile.Verificar o campo Data

E verificar o campo Fake GPS
  resource_consMarcacaoMobile.Verificar o campo Fake GPS

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
