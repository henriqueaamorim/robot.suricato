*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelservidoresadmitidos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Valores de Entrada do Modelo
${APPNAME}     consrelservidoresadmitidos
${OBJETIVO}    Verificar todos os campos na tela Valores de Entrada do Modelo.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Valores de Entrada do Modelo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Admitidos", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Empresa Terceira
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
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

Ao digitar a descrição: "Colaboradores Admitidos", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores Admitidos

Então devo visualizar a tela: Valores de Entrada do Modelo
  resource_consrelservidoresadmitidos.Acessar Tela Valores de Entrada do Modelo

E verificar a label Pesquisa
  resource_consrelservidoresadmitidos.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelservidoresadmitidos.Verificar o campo Empresa

E verificar o campo Empresa Terceira
  resource_consrelservidoresadmitidos.Verificar o campo Empresa Terceira

E verificar o campo Tipo do Colaborador
  resource_consrelservidoresadmitidos.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_consrelservidoresadmitidos.Verificar o campo Matrícula

E verificar o campo Exibir Usuário:
  resource_consrelservidoresadmitidos.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
