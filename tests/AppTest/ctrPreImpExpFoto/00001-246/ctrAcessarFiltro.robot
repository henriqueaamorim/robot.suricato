*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFoto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Importador/Exportador de Fotos
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Colaborador
  Então devo visualizar a tela: Importador/Exportador de Fotos

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Colaborador
  resource_mnu.Clicar No Menu Processo | Foto | Colaborador

Então devo visualizar a tela: Importador/Exportador de Fotos
  resource_ctrPreImpExpFoto.Acessar Tela Importador/Exportador de Fotos
