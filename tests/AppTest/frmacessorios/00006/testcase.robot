*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Acessórios (Atualização)
${APPNAME}     frmacessorios
${OBJETIVO}    Verificar todos os campos na tela Acessórios (Atualização).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Acessórios (Atualização)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Então devo visualizar a tela: Acessórios (Atualização)
  E verificar o campo Código do Acessório
  E verificar o campo Descrição do Acessório
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E verificar o campo Código do Acessório
  resource_frmacessorios.Verificar o campo Código do Acessório

E verificar o campo Descrição do Acessório
  resource_frmacessorios.Verificar o campo Descrição do Acessório

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
