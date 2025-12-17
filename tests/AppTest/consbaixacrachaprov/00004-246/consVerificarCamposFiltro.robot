*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta para Realização das Baixas de Crachá Provisório (Filtro)
${APPNAME}     consbaixacrachaprov
${OBJETIVO}    Verificar todos os campos na tela: Realização das Baixas de Crachá Provisório (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Realização das Baixas de Crachá Provisório (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Crachá
  E verificar o campo Empresa
  E verificar o campo Tipo de Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Filtro)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Filtro)

E verificar a label Pesquisa
  resource_consbaixacrachaprov.Verificar a label Pesquisa

E verificar o campo Crachá
  resource_consbaixacrachaprov.Verificar o campo Crachá

E verificar o campo Empresa
  resource_consbaixacrachaprov.Verificar o campo Empresa

E verificar o campo Tipo de Colaborador
  resource_consbaixacrachaprov.Verificar o campo Tipo de Colaborador

E verificar o campo Matrícula
  resource_consbaixacrachaprov.Verificar o campo Matrícula

E verificar o campo Nome
  resource_consbaixacrachaprov.Verificar o campo Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
