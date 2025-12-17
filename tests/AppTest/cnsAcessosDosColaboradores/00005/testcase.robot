*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsAcessosDosColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Acessos dos Colaboradores - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  E preencher o campo Data inicial "22/10/2022"
  E preencher o campo Data final "10/01/2023"
  E preencher o campo Hora "15:00"
  E selecionar uma opção no campo Planta "AAC"
  E selecionar uma opção no campo Codin "REP - AAC"
  E selecionar uma opção no campo Empresa "Alfandega"
  E preencher o campo Nome "Jorge"
  

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Colaborador

Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  resource_cnsAcessosDosColaboradores.Acessar Tela Consulta de Acessos dos Colaboradores - Filtro

E preencher o campo Data inicial "${DIA}/${MES}/${ANO}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Data inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data final "${DIA}/${MES}/${ANO}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Data final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora "${HORA}:${MIN}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Hora "${HORA}:${MIN}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Codin "${CODIN}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Empresa "${EMPRESA}"

E preencher o campo Nome "${NOME}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Nome "${NOME}"
