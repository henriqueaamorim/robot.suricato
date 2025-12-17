*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelcodins.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatorio de Codins - Filtro
${APPNAME}     consrelcodins
${OBJETIVO}    Verificar todos os campos na tela Relatorio de Codins - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatorio de Codins - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Codins", e clicar em Pesquisar
  Então devo visualizar a tela: Relatorio de Codins - Filtro
  E verificar a label Pesquisa
  E verificar o campo Descrição da Planta
  E verificar o campo Descrição do Codin
  E verificar o campo Modelo do Codin
  E verificar o campo Funcionamento do Codin
  E verificar o campo Codin Ativo
  E verificar o campo Localização do Codin
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

Ao digitar a descrição: "Codins", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Codins

Então devo visualizar a tela: Relatorio de Codins - Filtro
  resource_consrelcodins.Acessar Tela Relatorio de Codins - Filtro

E verificar a label Pesquisa
  resource_consrelcodins.Verificar a label Pesquisa

E verificar o campo Descrição da Planta
  resource_consrelcodins.Verificar o campo Descrição da Planta

E verificar o campo Descrição do Codin
  resource_consrelcodins.Verificar o campo Descrição do Codin

E verificar o campo Modelo do Codin
  resource_consrelcodins.Verificar o campo Modelo do Codin

E verificar o campo Funcionamento do Codin
  resource_consrelcodins.Verificar o campo Funcionamento do Codin

E verificar o campo Codin Ativo
  resource_consrelcodins.Verificar o campo Codin Ativo

E verificar o campo Localização do Codin
  resource_consrelcodins.Verificar o campo Localização do Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
