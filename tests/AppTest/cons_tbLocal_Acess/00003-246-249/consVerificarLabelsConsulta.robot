*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbLocal_Acess.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos as labels na tela Área de Risco (Consulta)
${SCREENNAME}  Área de Risco
${APPNAME}     cons_tbLocal_Acess


*** Test Cases ***
Testcase: Verificar todos as labels na tela Área de Risco (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  Então devo ver a tela: Área de Risco (Consulta)
  E verificar a label Código
  E verificar a label Descrição	
  E verificar a label Endereço IP - Painel
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Area de Risco

Então devo ver a tela: Área de Risco (Consulta)
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Consulta

E verificar a label Código
     resource_cons_tbLocal_Acess.Verificar a label Código

E verificar a label Descrição	
     resource_cons_tbLocal_Acess.Verificar a label Descrição

E verificar a label Endereço IP - Painel	
    resource_cons_tbLocal_Acess.Verificar a label Endereço IP - Painel

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    