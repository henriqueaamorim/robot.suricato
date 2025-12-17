*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelsituacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Situações
${APPNAME}     consrelsituacoes
${OBJETIVO}    Verificar todos os campos na tela Situações.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Situações
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Situações", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Situações
  E verificar a label Código Situação
  E verificar a label Situação
  E verificar a label Tipo
  E verificar a label Bloq. Acesso
  E verificar a label Bloq. Benef.
  E verificar a label Mostrar Usuario:
  E verificar a label Empresa:
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

Ao digitar a descrição: "Situações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Situações

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Situações
  resource_consrelsituacoes.Acessar Tela Situações

E verificar a label Código Situação
  resource_consrelsituacoes.Verificar a label Código Situação

E verificar a label Situação
  resource_consrelsituacoes.Verificar a label Situação

E verificar a label Tipo
  resource_consrelsituacoes.Verificar a label Tipo

E verificar a label Bloq. Acesso
  resource_consrelsituacoes.Verificar a label Bloq. Acesso

E verificar a label Bloq. Benef.
  resource_consrelsituacoes.Verificar a label Bloq. Benef.

E verificar a label Mostrar Usuario:
  resource_consrelsituacoes.Verificar a label Mostrar Usuario:

E verificar a label Empresa:
  resource_consrelsituacoes.Verificar a label Empresa:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
