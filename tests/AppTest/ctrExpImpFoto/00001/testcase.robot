*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFoto.robot
Resource        ../../../../resource/app/resource_ctrExpImpFoto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Exportação de Fotos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Colaborador
  Ao visualizar a tela: Importador/Exportador de Fotos
  E selecionar a opção: Exportar
  E clicar no botão: OK
  Então devo visualizar a tela: Exportação de Fotos

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Colaborador
  resource_mnu.Clicar No Menu Processo | Foto | Colaborador

Ao visualizar a tela: Importador/Exportador de Fotos
  resource_ctrPreImpExpFoto.Acessar Tela Importador/Exportador de Fotos

E selecionar a opção: Exportar
  resource_ctrPreImpExpFoto.Selecionar Exportar

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Exportação de Fotos
  resource_ctrExpImpFoto.Acessar Tela Exportação de Fotos
  