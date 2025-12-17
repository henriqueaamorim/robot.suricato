*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsautorizacaoacessoimprensa.robot
Resource    ../../frmHistoricoLocal/00004-246/frmEditarRegistro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Editar uma Autorização de Acesso Candidato 


*** Test Cases ***
Testcase: Editar uma Autorização de Acesso Candidato 
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Editar o registro
  E visualizar a tela: Autorização de Acesso de Candidato (Edição)
  Então devo clicar no botão: Salvar
  E permanecer na tela: Autorização de Acesso de Candidato (Edição)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsautorizacaoacessoimprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  
E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

E visualizar a tela: Autorização de Acesso de Candidato (Edição)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Atualização)

Então devo clicar no botão: Salvar
  resource_btn.Clicar No Botão Salvar

E permanecer na tela: Autorização de Acesso de Candidato (Edição)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Atualização)