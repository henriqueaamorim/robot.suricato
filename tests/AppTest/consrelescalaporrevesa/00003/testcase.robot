*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelescalaporrevesa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
 
${SCREENNAME}  Escalas (Filtro)
${APPNAME}     consrelescalaporrevesa
${OBJETIVO}    Verificar todos os campos na tela Escalas (Filtro).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Escalas (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Escala", e clicar em Pesquisar
  Então devo visualizar a tela: Escalas (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Tipo de Escala
  E verificar o campo Exibir Usuário:
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

Ao digitar a descrição: "Escala", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Escala

Então devo visualizar a tela: Escalas (Filtro)
  resource_consrelescalaporrevesa.Acessar Tela Escalas (Filtro)

E verificar a label Pesquisa
  resource_consrelescalaporrevesa.Verificar a label Pesquisa

E verificar o campo Tipo de Escala
  resource_consrelescalaporrevesa.Verificar o campo Tipo de Escala

E verificar o campo Exibir Usuário:
  resource_consrelescalaporrevesa.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
