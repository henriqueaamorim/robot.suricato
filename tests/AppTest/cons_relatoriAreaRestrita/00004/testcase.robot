*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cons_relatoriAreaRestrita.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Acessos às Áreas Restritas
${APPNAME}     cons_relatoriAreaRestrita
${OBJETIVO}    Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso a Área Restrita", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório de Acessos às Áreas Restritas
  E verificar a label Nome
  E verificar a label Código do Colaborador
  E verificar a label Tipo do Colaborador
  E verificar a label Data do Cadastro
  E verificar a label Hora Inicial do Cadastro
  E verificar a label Grupo de Acesso
  E verificar a label Data Final do Cadastro
  E verificar a label Hora Final
  E verificar a label Crachá
  E verificar a label Data do Acesso
  E verificar a label Hora do Acesso
  E verificar a label Sequência
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

Ao digitar a descrição: "Acesso a Área Restrita", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso a Área Restrita

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório de Acessos às Áreas Restritas
  resource_cons_relatoriAreaRestrita.Acessar Tela Relatório de Acessos às Áreas Restritas

E verificar a label Nome
  resource_cons_relatoriAreaRestrita.Verificar a label Nome

E verificar a label Código do Colaborador
  resource_cons_relatoriAreaRestrita.Verificar a label Código do Colaborador

E verificar a label Tipo do Colaborador
  resource_cons_relatoriAreaRestrita.Verificar a label Tipo do Colaborador

E verificar a label Data do Cadastro
  resource_cons_relatoriAreaRestrita.Verificar a label Data do Cadastro

E verificar a label Hora Inicial do Cadastro
  resource_cons_relatoriAreaRestrita.Verificar a label Hora Inicial do Cadastro

E verificar a label Grupo de Acesso
  resource_cons_relatoriAreaRestrita.Verificar a label Grupo de Acesso

E verificar a label Data Final do Cadastro
  resource_cons_relatoriAreaRestrita.Verificar a label Data Final do Cadastro

E verificar a label Hora Final
  resource_cons_relatoriAreaRestrita.Verificar a label Hora Final

E verificar a label Crachá
  resource_cons_relatoriAreaRestrita.Verificar a label Crachá

E verificar a label Data do Acesso
  resource_cons_relatoriAreaRestrita.Verificar a label Data do Acesso

E verificar a label Hora do Acesso
  resource_cons_relatoriAreaRestrita.Verificar a label Hora do Acesso

E verificar a label Sequência
  resource_cons_relatoriAreaRestrita.Verificar a label Sequência

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
