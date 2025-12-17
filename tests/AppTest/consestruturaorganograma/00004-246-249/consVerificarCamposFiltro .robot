*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Estrutura de Organograma (Filtro)
${APPNAME}     consestruturaorganograma
${SCREENNAME}  Estrutura de Organograma (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Estrutura de Organograma (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  Quando eu visualizar a tela: Estrutura de Organograma (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Estrutura de Organograma (Filtro)
  E verificar a label Pesquisa 
  E verificar o campo Código
  E verificar o campo Descrição
  E verificar se existe o campo teste 

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Local | Organograma

Quando eu visualizar a tela: Estrutura de Organograma (Consulta)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Estrutura de Organograma (Filtro)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma (Filtro)

E verificar a label Pesquisa 
  resource_consestruturaorganograma.Verificar a label Pesquisa 

E verificar o campo Código
  resource_consestruturaorganograma.Verificar o campo Código

E verificar o campo Descrição
  resource_consestruturaorganograma.Verificar o campo Descrição

E verificar se existe o campo teste 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
