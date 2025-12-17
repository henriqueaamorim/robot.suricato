*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelcadastrovisitantes.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cadastro de Visitantes
${APPNAME}     consrelcadastrovisitantes
${OBJETIVO}    Verificar todos os campos na tela Cadastro de Visitantes.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Cadastro de Visitantes
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Cadastro de Visitantes", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Cadastro de Visitantes
  E verificar a label Tipo
  E verificar a label Número
  E verificar a label Cod. Perm.
  E verificar a label Permissão
  E verificar a label Cod. Emp.
  E verificar a label Empresa
  E verificar a label Contato
  E verificar a label Nome
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

Ao digitar a descrição: "Cadastro de Visitantes", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Cadastro de Visitantes

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (inferior)

Então devo visualizar a tela: Cadastro de Visitantes
  resource_consrelcadastrovisitantes.Acessar Tela Cadastro de Visitantes

E verificar a label Tipo
  resource_consrelcadastrovisitantes.Verificar a label Tipo

E verificar a label Número
  resource_consrelcadastrovisitantes.Verificar a label Número

E verificar a label Cod. Perm.
  resource_consrelcadastrovisitantes.Verificar a label Cod. Perm.

E verificar a label Permissão
  resource_consrelcadastrovisitantes.Verificar a label Permissão

E verificar a label Cod. Emp.
  resource_consrelcadastrovisitantes.Verificar a label Cod. Emp.

E verificar a label Empresa
  resource_consrelcadastrovisitantes.Verificar a label Empresa

E verificar a label Contato
  resource_consrelcadastrovisitantes.Verificar a label Contato

E verificar a label Nome
  resource_consrelcadastrovisitantes.Verificar a label Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
