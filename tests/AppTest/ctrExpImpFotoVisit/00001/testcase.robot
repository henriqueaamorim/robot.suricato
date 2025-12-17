*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFotoVisit.robot
Resource        ../../../../resource/app/resource_ctrExpImpFotoVisit.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Importação e Exportação de Fotos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Visitante
  Ao visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  E selecionar a opção: Exportar
  E clicar no botão: OK
  Então devo visualizar a tela: Importação e Exportação de Fotos

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Visitante
  resource_mnu.Clicar No Menu Processo | Foto | Visitante

Ao visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  resource_ctrPreImpExpFotoVisit.Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle

E selecionar a opção: Exportar
  resource_ctrPreImpExpFotoVisit.Selecionar Exportar

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Importação e Exportação de Fotos
  resource_ctrExpImpFotoVisit.Acessar Tela Importação e Exportação de Fotos
