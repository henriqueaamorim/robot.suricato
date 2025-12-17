*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelgrupopermissoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Grupo de Acesso
${APPNAME}     consrelgrupopermissoes
${OBJETIVO}    Verificar todos os campos na tela Grupo de Acesso.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Grupo de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Grupo de Acesso", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Grupo de Acesso
  E verificar a label Acão
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Descrição
  E verificar a label Início Faixa
  E verificar a label Fim Faixa
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

Ao digitar a descrição: "Grupo de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Grupo de Acesso

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Grupo de Acesso
  resource_consrelgrupopermissoes.Acessar Tela Grupo de Acesso

E verificar a label Acão
  resource_consrelgrupopermissoes.Verificar a label Acão

E verificar a label Planta
  resource_consrelgrupopermissoes.Verificar a label Planta

E verificar a label Codin
  resource_consrelgrupopermissoes.Verificar a label Codin

E verificar a label Descrição
  resource_consrelgrupopermissoes.Verificar a label Descrição

E verificar a label Início Faixa
  resource_consrelgrupopermissoes.Verificar a label Início Faixa

E verificar a label Fim Faixa
  resource_consrelgrupopermissoes.Verificar a label Fim Faixa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
