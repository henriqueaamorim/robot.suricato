*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consferiado.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Feriado
${APPNAME}     consferiado
${OBJETIVO}    Verificar todas as labels na tela: Feriado (Filtro)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Feriado (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Quando ver a tela: Feriado (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Feriado (Filtro)
  E verificar a label Pesquisa
  E verificar o campo External Key	
  E verificar o campo Descrição
  E verificar o campo Feriado Nacional
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Quando ver a tela: Feriado (Consulta)
  resource_consferiado.Acessar Tela Consulta de Feriados

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Feriado (Filtro)
  resource_consferiado.Acessar Tela Consulta de Feriados (Filtro)  

E verificar a label Pesquisa
  resource_consferiado.Verificar a label Pesquisa

E verificar o campo External Key	
  resource_consferiado.Verificar o campo External Key (Filtro)

E verificar o campo Descrição
  resource_consferiado.Verificar o campo Código Descrição (Filtro)

E verificar o campo Feriado Nacional
  resource_consferiado.Verificar o campo Feriado Nacional (Filtro)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
