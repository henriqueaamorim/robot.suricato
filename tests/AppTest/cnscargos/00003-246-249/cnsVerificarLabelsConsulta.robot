*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Cargos
${APPNAME}     cnscargos
${OBJETIVO}    Verificar todos as Labels na tela: Cargos (Consulta)


*** Test Cases ***
Testcase: Verificar todos as Labels na tela: Cargos (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  Então devo visualizar a tela: Cargos (Consulta)
  E verificar a label Grupo do Cargo
  E verificar a label Código do Cargo
  E verificar a label Cargo (abreviado)
  E verificar a label Nome do Cargo
  E verificar se existe o campo Teste na tela 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Cargo

Então devo visualizar a tela: Cargos (Consulta)
  resource_cnscargos.Acessar Tela Consulta de Cargos

E verificar a label Grupo do Cargo
  resource_cnscargos.Verificar a label Grupo do Cargo

E verificar a label Código do Cargo
  resource_cnscargos.Verificar a label Código do Cargo

E verificar a label Cargo (abreviado)
  resource_cnscargos.Verificar a label Cargo (abreviado)

E verificar a label Nome do Cargo
  resource_cnscargos.Verificar a label Nome do Cargo

E verificar se existe o campo Teste na tela 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
