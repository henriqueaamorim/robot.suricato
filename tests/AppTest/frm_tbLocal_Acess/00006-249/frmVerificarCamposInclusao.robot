*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbLocal_Acess.robot
#Resource        ../../../../resource/app/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Acessar Tela Área de Risco - Cadastro 
${APPNAME}    Frm_tbLocal_Acess
${OBJETIVO}   Verificar todos os campos na tela Acessar Tela Área de Risco - Cadastro


*** Test Cases ***

Testcase: Verificar todos os campos na tela Acessar Tela Área de Risco - Cadastro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  Então devo ver a tela: Área de Risco - Cadastro
  #E verificar o campo Código
  #E verificar o campo Descrição      
  #E verificar o campo Tempo Limite Dentro
  #E verificar o campo Time-Out Saída (Minutos)
  #E verificar o campo Endereço IP-Painel
  #E verificar o campo Pré Mensagem de Exibição
  #E verificar o campo Pós Mensagem de Exibição 
  #E verificar o campo Tempo de Visualização (Segundos)
  #E E verificar se existe o campo Teste
  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

Então devo ver a tela: Área de Risco - Cadastro
  sleep  5s
  resource_frm_tbLocal_Acess.Acessar Tela Área de Risco - Cadastro

E verificar o campo Código
  resource_frm_tbLocal_Acess.E verificar o campo Código

E verificar o campo Descrição      
  resource_frm_tbLocal_Acess.E verificar o campo Descrição      

E verificar o campo Tempo Limite Dentro
  resource_frm_tbLocal_Acess.E verificar o campo Tempo Limite Dentro

E verificar o campo Time-Out Saída (Minutos)
  resource_frm_tbLocal_Acess.E verificar o campo Time-Out Saída (Minutos)

E verificar o campo Endereço IP-Painel
  resource_frm_tbLocal_Acess.E verificar o campo Endereço IP-Painel

E verificar o campo Pré Mensagem de Exibição
  resource_frm_tbLocal_Acess.E verificar o campo Pré Mensagem de Exibição

E verificar o campo Pós Mensagem de Exibição 
  resource_frm_tbLocal_Acess.E verificar o campo Pós Mensagem de Exibição 

E verificar o campo Tempo de Visualização (Segundos)
  resource_frm_tbLocal_Acess.E verificar o campo Tempo de Visualização (Segundos)

E E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"