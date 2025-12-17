*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmAmbiente.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cadastro de Ambiente
${APPNAME}  frmAmbiente
${OBJETIVO}   Verificar todos os campos na tela Cadastro de Ambiente


*** Test Cases ***

Testcase: Verificar todos os campos na tela Cadastro de Ambiente
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando eu visualizar a tela: Consulta de Ambiente
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Ambiente
  E verificar o campo Ambiente*
  E verificar o campo Planta*
  E verificar o campo Código Ambiente Superior*
  E verificar o campo Codins   
  E verificar o campo Qualidade Min. de Pessoas    
  E verificar o campo Quantidade Máx. de Pessoas
  #E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando eu visualizar a tela: Consulta de Ambiente
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Ambiente
  resource_frmAmbiente.Acessar Tela Cadastro de Ambiente

E verificar o campo Planta*
  resource_frmAmbiente.Verificar o campo Planta*

E verificar o campo Código Ambiente Superior*
  resource_frmAmbiente.Verificar o campo Código Ambiente Superior*

E verificar o campo Codins   
  resource_frmAmbiente.Verificar o campo Codins

E verificar o campo Qualidade Min. de Pessoas    
  resource_frmAmbiente.Verificar o campo Qualidade Min 

E verificar o campo Quantidade Máx. de Pessoas 
  resource_frmAmbiente.Verificar o campo Quantidade Máx

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}" 

E verificar o campo Ambiente*
  resource_frmAmbiente.Verificar o campo Ambiente*
