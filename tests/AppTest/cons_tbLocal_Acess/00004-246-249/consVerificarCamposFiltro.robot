*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbLocal_Acess.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela Área de Risco (Filtro)
${SCREENNAME}  Área de Risco
${APPNAME}     cons_tbLocal_Acess
CONS_TBCONTRLOCALACESSO     
*** Test Cases ***

Testcase: Verificar todos os campos na tela Área de Risco (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  Então devo ver a tela: Área de Risco (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Área de Risco (Filtro)
  E verificar o campo Código
  E verificar o campo Descrição
  E verificar o campo Endereço IP - Painel	
  E verificar o campo Tempo Limite Dentro
  E verificar se existe o campo Teste na tela
 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Area de Risco

Então devo ver a tela: Área de Risco (Consulta)
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Consulta

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Área de Risco (Filtro)
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Filtro

E verificar o campo Código
    resource_cons_tbLocal_Acess.Verificar o campo Código

E verificar o campo Descrição
    resource_cons_tbLocal_Acess.Verificar o campo Descrição

E verificar o campo Endereço IP - Painel
    resource_cons_tbLocal_Acess.Verificar o campo Endereço IP - Painel

E verificar o campo Tempo Limite Dentro	
    resource_cons_tbLocal_Acess.Verificar o campo Tempo Limite Dentro

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    

