*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentoChave.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Movimentação de Chave - Filtro
${APPNAME}     cnsMovimentoChave
${OBJETIVO}    Verificar todos os campos na tela Movimentação de Chave - Filtro

*** Test Cases ***

Testcase: Verificar todos os campos na tela Movimentação de Chave - Filtro

  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Relatório de Movimentação de Chave
  Então devo visualizar a tela: Movimentação de Chave - Filtro
  E verificar o campo Chave         
  E verificar o campo Empresa      
  E verificar o campo Tipo Colaborador   
  E verificar o campo Matrícula    
  E verificar o campo Data Retirada   
  E verificar o campo Hora Retirada   
  E verificar o campo Data Devolução 
  E verificar o campo Hora Devolução 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Relatório de Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave

Então devo visualizar a tela: Movimentação de Chave - Filtro
  resource_cnsMovimentoChave.Acessar Tela Movimentação de Chave - Filtro

E verificar o campo Chave         
  resource_cnsMovimentoChave.E verificar o campo Chave  

E verificar o campo Empresa      
  resource_cnsMovimentoChave.E verificar o campo Empresa      

E verificar o campo Tipo Colaborador   
  resource_cnsMovimentoChave.E verificar o campo Tipo Colaborador   

E verificar o campo Matrícula    
  resource_cnsMovimentoChave.E verificar o campo Matrícula    

E verificar o campo Data Retirada   
  resource_cnsMovimentoChave.E verificar o campo Data Retirada   

E verificar o campo Hora Retirada   
  resource_cnsMovimentoChave.E verificar o campo Hora Retirada   

E verificar o campo Data Devolução 
  resource_cnsMovimentoChave.E verificar o campo Data Devolução 

E verificar o campo Hora Devolução   
  resource_cnsMovimentoChave.E verificar o campo Hora Devolução   

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
