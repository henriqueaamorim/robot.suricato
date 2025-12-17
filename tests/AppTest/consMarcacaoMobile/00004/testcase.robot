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

${SCREENNAME}  Marcação de Ponto Codin Mobile
${APPNAME}     consMarcacaoMobile
${OBJETIVO}    Verificar todos os campos na tela Marcação de Ponto Codin Mobile.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Marcação de Ponto Codin Mobile
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Marcação de Ponto Codin Mobile", e clicar em Pesquisar
  Então devo visualizar a tela: Marcação de Ponto Codin Mobile (Filtro)
  E preencher o campo Data/Hora Inicio "01/08/2017 | 00:00"
  E preencher o campo Data/Hora Fim "02/08/2022 | 23:59"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Marcação de Ponto Codin Mobile
  E verificar a label Matricula
  E verificar a label Tipo
  E verificar a label Colaborador
  E verificar a label Data
  E verificar a label Fuso
  E verificar a label Latitude
  E verificar a label Longitude
  E verificar a label Mac Address
  E verificar a label Versão do Sistema
  E verificar a label Localização
  E verificar a label MNC
  E verificar a label MCC
  E verificar a label CID
  E verificar a label LAC
  E verificar a label Fake GPS
  E verificar a label Fake Latitude
  E verificar a label Fake Longitude
  E verificar a label Ver Mapa
  E verificar a label Foto
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

E preencher o campo Data/Hora Inicio "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"
  resource_consMarcacaoMobile.Preencher o campo Data/Hora Inicio "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"

E preencher o campo Data/Hora Fim "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"
  resource_consMarcacaoMobile.Preencher o campo Data/Hora Fim "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Marcação de Ponto Codin Mobile
  resource_consMarcacaoMobile.Acessar Tela Marcação de Ponto Codin Mobile

E verificar a label Matricula
  resource_consMarcacaoMobile.Verificar a label Matricula

E verificar a label Tipo
  resource_consMarcacaoMobile.Verificar a label Tipo

E verificar a label Colaborador
  resource_consMarcacaoMobile.Verificar a label Colaborador

E verificar a label Data
  resource_consMarcacaoMobile.Verificar a label Data

E verificar a label Fuso
  resource_consMarcacaoMobile.Verificar a label Fuso

E verificar a label Latitude
  resource_consMarcacaoMobile.Verificar a label Latitude

E verificar a label Longitude
  resource_consMarcacaoMobile.Verificar a label Longitude

E verificar a label Mac Address
  resource_consMarcacaoMobile.Verificar a label Mac Address

E verificar a label Versão do Sistema
  resource_consMarcacaoMobile.Verificar a label Versão do Sistema

E verificar a label Localização
  resource_consMarcacaoMobile.Verificar a label Localização

E verificar a label MNC
  resource_consMarcacaoMobile.Verificar a label MNC

E verificar a label MCC
  resource_consMarcacaoMobile.Verificar a label MCC

E verificar a label CID
  resource_consMarcacaoMobile.Verificar a label CID

E verificar a label LAC
  resource_consMarcacaoMobile.Verificar a label LAC

E verificar a label Fake GPS
  resource_consMarcacaoMobile.Verificar a label Fake GPS

E verificar a label Fake Latitude
  resource_consMarcacaoMobile.Verificar a label Fake Latitude

E verificar a label Fake Longitude
  resource_consMarcacaoMobile.Verificar a label Fake Longitude

E verificar a label Ver Mapa
  resource_consMarcacaoMobile.Verificar a label Ver Mapa

E verificar a label Foto
  resource_consMarcacaoMobile.Verificar a label Foto

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
