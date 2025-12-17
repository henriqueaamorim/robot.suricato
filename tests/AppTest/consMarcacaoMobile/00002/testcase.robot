*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consMarcacaoMobile.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Marcação de Ponto Codin Mobile
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Marcação de Ponto Codin Mobile", e clicar em Pesquisar
  Então devo visualizar a tela: Marcação de Ponto Codin Mobile (Filtro)
  E preencher o campo Data/Hora Inicio "07/06/2022 | 10:22"
  E preencher o campo Data/Hora Fim "08/06/2022 | 10:22"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Marcação de Ponto Codin Mobile

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
