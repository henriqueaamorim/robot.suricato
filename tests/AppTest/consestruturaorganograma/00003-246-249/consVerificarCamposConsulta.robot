*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${APPNAME}     consestruturaorganograma
${SCREENNAME}  Consulta de Estrutura de Organograma (Filtro)
${OBJETIVO}    Verificar todas as labels na tela: Estrutura de Organograma (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Estrutura de Organograma (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  Quando eu visualizar a tela: Estrutura de Organograma (Consulta)
  E verificar a label Código
  E verificar a label Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Local | Organograma

Quando eu visualizar a tela: Estrutura de Organograma (Consulta)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E verificar a label Código
  resource_consestruturaorganograma.Verificar a label Código

E verificar a label Descrição
  resource_consestruturaorganograma.Verificar a label Descrição

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  



