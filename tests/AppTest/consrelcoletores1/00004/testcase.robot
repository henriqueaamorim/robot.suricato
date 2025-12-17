*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelcoletores1.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Codins
${APPNAME}     consrelcoletores1
${OBJETIVO}    Verificar todos os campos na tela Codins.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Codins
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Codins 1", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Codins
  E verificar a label Código do Codin
  E verificar a label Descrição
  E verificar a label Nº Terminal
  E verificar a label Local
  E verificar a label Portaria
  E verificar a label Função Codin
  E verificar a label Cent.
  E verificar a label Niv. Acc.
  E verificar a label Cre. Acc.
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

Ao digitar a descrição: "Codins 1", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Codins 1

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Codins
  resource_consrelcoletores1.Acessar Tela Codins

E verificar a label Código do Codin
  resource_consrelcoletores1.Verificar a label Código do Codin

E verificar a label Descrição
  resource_consrelcoletores1.Verificar a label Descrição

E verificar a label Nº Terminal
  resource_consrelcoletores1.Verificar a label Nº Terminal

E verificar a label Local
  resource_consrelcoletores1.Verificar a label Local

E verificar a label Portaria
  resource_consrelcoletores1.Verificar a label Portaria

E verificar a label Função Codin
  resource_consrelcoletores1.Verificar a label Função Codin

E verificar a label Cent.
  resource_consrelcoletores1.Verificar a label Cent.

E verificar a label Niv. Acc.
  resource_consrelcoletores1.Verificar a label Niv. Acc.

E verificar a label Cre. Acc.
  resource_consrelcoletores1.Verificar a label Cre. Acc.

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
