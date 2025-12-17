*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocaescala.robot
Resource        ../../../../resource/app/resource_cnstrocaescala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Programação - Troca de Escala (Consulta)
${SCREENNAME}  Programação - Troca de Escala
${APPNAME}     cnstrocaescala


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Programação - Troca de Escala (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  Então devo verificar a label: Empresa
  E verficar a label: Tipo
  E verficar a label: Nome
  E verficar a label: Matrícula
  E verficar a label: Data Inicial
  E verficar a label: Data Final
  E verficar a label: Escala
  E verificar se existe o campo Teste na tela
 
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  resource_cnstrocaescala.Acessar Tela: Programação - Troca de Escala (Consulta)

Então devo verificar a label: Empresa
    resource_cnstrocaescala.Verificar a label Empresa

E verficar a label: Tipo
    resource_cnstrocaescala.Verificar a label Tipo

E verficar a label: Nome
    resource_cnstrocaescala.Verificar a label Nome

E verficar a label: Matrícula
    resource_cnstrocaescala.Verificar a label Matrícula

E verficar a label: Data Inicial
    resource_cnstrocaescala.Verificar a label Data Inicial

E verficar a label: Data Final
    resource_cnstrocaescala.Verificar a label Data Final

E verficar a label: Escala
    resource_cnstrocaescala.Verificar a label Escala

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

