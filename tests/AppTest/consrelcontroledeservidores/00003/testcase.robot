*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelcontroledeservidores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Valores de Entrada do Modelo
${APPNAME}     consrelcontroledeservidores
${OBJETIVO}    Verificar todos os campos na tela Valores de Entrada do Modelo.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Valores de Entrada do Modelo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Controle de Colaboradores Desligados", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E verificar a label Pesquisa
  E verificar o campo Desligamento
  E verificar o campo Situação
  E verificar o campo Empresa
  E verificar o campo Tipo de Colaborador
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

Ao digitar a descrição: "Controle de Colaboradores Desligados", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Controle de Colaboradores Desligados

Então devo visualizar a tela: Valores de Entrada do Modelo
  resource_consrelcontroledeservidores.Acessar Tela Valores de Entrada do Modelo

E verificar a label Pesquisa
  resource_consrelcontroledeservidores.Verificar a label Pesquisa

E verificar o campo Desligamento
  resource_consrelcontroledeservidores.Verificar o campo Desligamento

E verificar o campo Situação
  resource_consrelcontroledeservidores.Verificar o campo Situação

E verificar o campo Empresa
  resource_consrelcontroledeservidores.Verificar o campo Empresa

E verificar o campo Tipo de Colaborador
  resource_consrelcontroledeservidores.Verificar o campo Tipo de Colaborador

E verificar o campo Matrícula
  resource_consrelcontroledeservidores.Verificar o campo Matrícula

E verificar o campo Exibir Usuário:
  resource_consrelcontroledeservidores.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
