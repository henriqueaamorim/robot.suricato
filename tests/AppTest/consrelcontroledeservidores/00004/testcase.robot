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

${SCREENNAME}  Controle de Colaboradores Desligados
${APPNAME}     consrelcontroledeservidores
${OBJETIVO}    Verificar todos os campos na tela Controle de Colaboradores Desligados.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Controle de Colaboradores Desligados
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Controle de Colaboradores Desligados", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Controle de Colaboradores Desligados
  E verificar a label Matrícula
  E verificar a label Colaborador
  E verificar a label Ramal
  E verificar a label Desligamento
  E verificar a label Hora Afast.
  E verificar a label Situação
  E verificar a label Desc.Situação
  E verificar a label Dias Justif.
  E verificar a label Hora Término
  E verificar a label Prev.Término
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Controle de Colaboradores Desligados
  resource_consrelcontroledeservidores.Acessar Tela Controle de Colaboradores Desligados

E verificar a label Matrícula
  resource_consrelcontroledeservidores.Verificar a label Matrícula

E verificar a label Colaborador
  resource_consrelcontroledeservidores.Verificar a label Colaborador

E verificar a label Ramal
  resource_consrelcontroledeservidores.Verificar a label Ramal

E verificar a label Desligamento
  resource_consrelcontroledeservidores.Verificar a label Desligamento

E verificar a label Hora Afast.
  resource_consrelcontroledeservidores.Verificar a label Hora Afast.

E verificar a label Situação
  resource_consrelcontroledeservidores.Verificar a label Situação

E verificar a label Desc.Situação
  resource_consrelcontroledeservidores.Verificar a label Desc.Situação

E verificar a label Dias Justif.
  resource_consrelcontroledeservidores.Verificar a label Dias Justif.

E verificar a label Hora Término
  resource_consrelcontroledeservidores.Verificar a label Hora Término

E verificar a label Prev.Término
  resource_consrelcontroledeservidores.Verificar a label Prev.Término

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
