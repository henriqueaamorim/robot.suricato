*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSenhaAleatoria.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Solicitação de Senha Aleatória para Codins
${APPNAME}     ctrSenhaAleatoria
${OBJETIVO}    Verificar todos os campos na tela Solicitação de Senha Aleatória para Codins


*** Test Cases ***
Testcase: Verificar todos os campos na tela Solicitação de Senha Aleatória para Codins
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  Então devo visualizar a tela: Solicitação de Senha Aleatória para Codins
  E verificar o campo Empresa1       
  E verificar o campo Tipo Colaborador        
  E verificar o campo Matrícula      
  E verificar o campo ID      
  E verificar o campo Nome       
  E verificar o campo Apelido
  E verificar o campo Situação    
  E verificar o campo Empresa     
  E verificar o campo Planta   
  E verificar o campo Codin       
  E verificar o campo Senha   
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  resource_mnu.Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

Então devo visualizar a tela: Solicitação de Senha Aleatória para Codins
  resource_ctrSenhaAleatoria.Acessar Tela Solicitação de Senha Aleatória para Codins

E verificar o campo Empresa1       
  resource_ctrSenhaAleatoria.E verificar o campo Empresa1 

E verificar o campo Tipo Colaborador        
  resource_ctrSenhaAleatoria.E verificar o campo Tipo Colaborador   

E verificar o campo Matrícula      
  resource_ctrSenhaAleatoria.E verificar o campo Matrícula 

E verificar o campo ID      
  resource_ctrSenhaAleatoria.E verificar o campo ID 

E verificar o campo Nome       
  resource_ctrSenhaAleatoria.E verificar o campo Nome 

E verificar o campo Apelido
  resource_ctrSenhaAleatoria.E verificar o campo Apelido

E verificar o campo Situação    
  resource_ctrSenhaAleatoria.E verificar o campo Situação  

E verificar o campo Empresa     
  resource_ctrSenhaAleatoria.E verificar o campo Empresa 

E verificar o campo Planta   
  resource_ctrSenhaAleatoria.E verificar o campo Planta 

E verificar o campo Codin       
  resource_ctrSenhaAleatoria.E verificar o campo Codin

E verificar o campo Senha   
  resource_ctrSenhaAleatoria.E verificar o campo Senha  

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"