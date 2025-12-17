*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbcodinLocalAcess.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***


${SCREENNAME}  Área de Risco - Codin
${APPNAME}  frm_tbcodinLocalAcess
${OBJETIVO}   Verificar todos os campos na tela Área de Risco - Codin


*** Test Cases ***

Testcase: Verificar todos os campos na tela Área de Risco - Codin
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  Então devo ver a tela: Área de Risco - Codin
  E verificar o campo Área de Risco 
  E verificar o campo Planta
  E verificar o campo Codin
  E E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

Então devo ver a tela: Área de Risco - Codin
  resource_frm_tbcodinLocalAcess.Acessar Tela Área de Risco - Codin


E verificar o campo Área de Risco 
  resource_frm_tbcodinLocalAcess.E verificar o campo Área de Risco 

E verificar o campo Planta
  resource_frm_tbcodinLocalAcess.E verificar o campo Planta

E verificar o campo Codin
  resource_frm_tbcodinLocalAcess.E verificar o campo Codin

E E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
