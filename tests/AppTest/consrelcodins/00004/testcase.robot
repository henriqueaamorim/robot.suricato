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

${SCREENNAME}  Relatorio de Codins
${APPNAME}     consrelcodins
${OBJETIVO}    Verificar todos os campos na tela Relatorio de Codins.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatorio de Codins
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Codins", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatorio de Codins
  E verificar a label Código da Planta
  E verificar a label Descrição da Planta
  E verificar a label Código do Codin
  E verificar a label Descrição do Codin
  E verificar a label Endereço IP
  E verificar a label Modelo do Codin
  E verificar a label Indelevel
  E verificar a label Funcionamento do Codin
  E verificar a label Codin Ativo
  E verificar a label Localização do Codin
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatorio de Codins
  resource_consrelcodins.Acessar Tela Relatorio de Codins

E verificar a label Código da Planta
  resource_consrelcodins.Verificar a label Código da Planta

E verificar a label Descrição da Planta
  resource_consrelcodins.Verificar a label Descrição da Planta

E verificar a label Código do Codin
  resource_consrelcodins.Verificar a label Código do Codin

E verificar a label Descrição do Codin
  resource_consrelcodins.Verificar a label Descrição do Codin

E verificar a label Endereço IP
  resource_consrelcodins.Verificar a label Endereço IP

E verificar a label Modelo do Codin
  resource_consrelcodins.Verificar a label Modelo do Codin

E verificar a label Indelevel
  resource_consrelcodins.Verificar a label Indelevel

E verificar a label Funcionamento do Codin
  resource_consrelcodins.Verificar a label Funcionamento do Codin

E verificar a label Codin Ativo
  resource_consrelcodins.Verificar a label Codin Ativo

E verificar a label Localização do Codin
  resource_consrelcodins.Verificar a label Localização do Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
