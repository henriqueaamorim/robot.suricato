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
  Então devo visualizar a tela: Autorização de Acesso de Candidato (Edição)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsautorizacaoacessoimprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  
E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Autorização de Acesso de Candidato (Edição)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Atualização)
