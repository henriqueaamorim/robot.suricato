*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos as Labels na tela: Escala (Consulta)
${SCREENNAME}  Consulta de Escalas
${APPNAME}     consescalacad


*** Test Cases ***
Testcase: Verificar todos as Labels na tela: Escala (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | scala
  Quando visualizar a tela: Escala (Consulta)
  Então devo verificar a label: Chave Externa
  E verificar a label: Código da Escala
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | scala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Quando visualizar a tela: Escala (Consulta)
  resource_consescalacad.Acessar Tela Consulta de Escalas

Então devo verificar a label: Chave Externa
  resource_consescalacad.Verificar a label Chave Externa

E verificar a label: Código da Escala
  resource_consescalacad.Verificar a label Código da Escala

E verificar a label: Descrição
  resource_consescalacad.Verificar a label Descrição   

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
