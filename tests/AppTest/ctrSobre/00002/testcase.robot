*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSobre.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Suricato - Versão
${APPNAME}     ctrSobre
${OBJETIVO}    Verificar todos os campos na tela Suricato - Versão.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Suricato - Versão
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Ajuda | Sobre
  Então devo visualizar a tela: Suricato - Versão
  E verificar a label Data Licença
  E verificar a label Codin Licenciados
  E verificar a label Quantidade Codin Cadastrados
  E verificar a label Quantidade Codin Validos
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Ajuda | Sobre
  resource_mnu.Clicar No Menu Ajuda | Sobre

Então devo visualizar a tela: Suricato - Versão
  resource_ctrSobre.Acessar Tela Suricato - Versão

E verificar a label Data Licença
  resource_ctrSobre.Verificar a label Data Licença

E verificar a label Codin Licenciados
  resource_ctrSobre.Verificar a label Codin Licenciados

E verificar a label Quantidade Codin Cadastrados
  resource_ctrSobre.Verificar a label Quantidade Codin Cadastrados

E verificar a label Quantidade Codin Validos
  resource_ctrSobre.Verificar a label Quantidade Codin Validos

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
