*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelcolaboradorporescala.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Colaboradores por Escala - Filtro
${APPNAME}     consrelcolaboradorporescala
${OBJETIVO}    Verificar todos os campos na tela Colaboradores por Escala - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Colaboradores por Escala - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores por Escala", e clicar em Pesquisar
  Então devo visualizar a tela: Colaboradores por Escala - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Matrícula
  E verificar o campo Situação
  E verificar o campo Escala
  E verificar o campo Alteração
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

Ao digitar a descrição: "Colaboradores por Escala", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores por Escala

Então devo visualizar a tela: Colaboradores por Escala - Filtro
  resource_consrelcolaboradorporescala.Acessar Tela Colaboradores por Escala - Filtro

E verificar a label Pesquisa
  resource_consrelcolaboradorporescala.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelcolaboradorporescala.Verificar o campo Empresa

E verificar o campo Matrícula
  resource_consrelcolaboradorporescala.Verificar o campo Matrícula

E verificar o campo Situação
  resource_consrelcolaboradorporescala.Verificar o campo Situação

E verificar o campo Escala
  resource_consrelcolaboradorporescala.Verificar o campo Escala

E verificar o campo Alteração
  resource_consrelcolaboradorporescala.Verificar o campo Alteração

E verificar o campo Exibir Usuário:
  resource_consrelcolaboradorporescala.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
