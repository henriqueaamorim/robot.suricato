*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Benefícios (Atualização)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Então devo visualizar a tela: Benefícios (Consulta)
  E clicar no botão Abrir um novo registro
  Então devo visualizar a tela: Benefícios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Então devo visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

Então devo visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios

E clicar no botão Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro