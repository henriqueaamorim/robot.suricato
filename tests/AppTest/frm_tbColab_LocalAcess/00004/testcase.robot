*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbColab_LocalAcess.robot
Resource        ../../../../resource/resource_utils.robot 

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Área de Risco - Colaborador
${APPNAME}  Verificar todos os campos na tela Área de Risco - Colaborador
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Área de Risco - Colaborador
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  Então devo ver a tela: Área de Risco - Colaborador
  E verificar o campo Colaborador 
  E verificar o campo Nome 
  E verificar o campo Área de Risco       
  E E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador

Então devo ver a tela: Área de Risco - Colaborador
  resource_frm_tbColab_LocalAcess.Acessar Tela Área de Risco - Colaborador

E verificar o campo Colaborador 
  resource_frm_tbColab_LocalAcess.E verificar o campo Colaborador 

E verificar o campo Nome 
  resource_frm_tbColab_LocalAcess.E verificar o campo Nome 

E verificar o campo Área de Risco       
  resource_frm_tbColab_LocalAcess.E verificar o campo Área de Risco 

E E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
