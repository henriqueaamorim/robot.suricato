*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsautorizacaoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Autorização de Acesso Candidato (Edição)


*** Test Cases ***
Testcase: Acessar Tela Autorização de Acesso Candidato (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Editar o registro
  E visualizar a tela: Autorização de Acesso de Candidato (Edição)
  Então devo clicar no botão: Excluir 
  E clicar no botão: Ok para confirmar a exclusão 


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsautorizacaoacessoimprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  
E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

E visualizar a tela: Autorização de Acesso de Candidato (Edição)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Atualização)

Então devo clicar no botão: Excluir 
  resource_btn.Clicar No Botão Excluir

E clicar no botão: Ok para confirmar a exclusão   
  resource_btn.Clicar No Botão OK