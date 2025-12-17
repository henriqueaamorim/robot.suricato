*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Cargos (Filtro)
${APPNAME}     cnscargos
${OBJETIVO}    Verificar todos os campos na tela: Cargos (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Cargos (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  Quando visualizar a tela: Cargo (Consulta)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Cargos (Filtro)
  E verificar o campo Grupo do Cargo
  E verificar o campo Código do Cargo
  E verificar o campo Cargo (abreviado)
  E verificar o campo Nome do Cargo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Cargo

Quando visualizar a tela: Cargo (Consulta)
  resource_cnscargos.Acessar Tela Consulta de Cargos

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Cargos (Filtro)
  resource_cnscargos.Acessar Tela Consulta de Cargos (Filtro)

E verificar o campo Grupo do Cargo
  resource_cnscargos.Verificar o campo Grupo do Cargo

E verificar o campo Código do Cargo
  resource_cnscargos.Verificar o campo Código do Cargo

E verificar o campo Cargo (abreviado)
  resource_cnscargos.Verificar o campo Cargo (abreviado)

E verificar o campo Nome do Cargo
  resource_cnscargos.Verificar o campo Nome do Cargo

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
