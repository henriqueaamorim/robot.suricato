*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Benefícios (Atualização)
${APPNAME}     frmbeneficios
${OBJETIVO}    Verificar todos os campos na tela Benefícios (Atualização)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Benefícios (Atualização)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Então devo visualizar a tela: Benefícios (Consulta)
  E clicar no botão Abrir um novo registro
  Então devo visualizar a tela: Benefícios (Atualização)
  E verificar o campo Código do Benefício 
  E verificar o campo Descrição 
  E verificar o campo Máximo de Entregas sem Retirada
  E verificar se existe o campo Teste  

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Então devo visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

E verificar o campo Código do Benefício 
  resource_frmbeneficios.E verificar o campo Código do Benefício 

E verificar o campo Descrição 
  resource_frmbeneficios.E verificar o campo Descrição 

E verificar o campo Máximo de Entregas sem Retirada
  resource_frmbeneficios.E verificar o campo Máximo de Entregas sem Retirada

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

E clicar no botão Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios
