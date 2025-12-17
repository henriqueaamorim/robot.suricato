*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Acesso de Visitantes - Filtro
${APPNAME}     consrelacessovisitante
${OBJETIVO}    Verificar todos os campos na tela Relatório de Acesso de Visitantes - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Acesso de Visitantes - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Visitante", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Acesso de Visitantes - Filtro
  E verificar o campo Nome Visitante
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Tipo
  E verificar o campo Planta
  E verificar o campo Codin
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

Ao digitar a descrição: "Acesso de Visitante", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso de Visitante

Então devo visualizar a tela: Relatório de Acesso de Visitantes - Filtro
  resource_consrelacessovisitante.Acessar Tela Relatório de Acesso de Visitantes - Filtro

E verificar o campo Nome Visitante
  resource_consrelacessovisitante.Verificar o campo Nome Visitante

E verificar o campo Data
  resource_consrelacessovisitante.Verificar o campo Data

E verificar o campo Hora
  resource_consrelacessovisitante.Verificar o campo Hora

E verificar o campo Tipo
  resource_consrelacessovisitante.Verificar o campo Tipo

E verificar o campo Planta
  resource_consrelacessovisitante.Verificar o campo Planta

E verificar o campo Codin
  resource_consrelacessovisitante.Verificar o campo Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
