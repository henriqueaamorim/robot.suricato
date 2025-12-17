*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFotoVisit.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Visitante - Pré Seleção (Importador/Exportador) - Controle
${APPNAME}     ctrPreImpExpFotoVisit
${OBJETIVO}    Verificar todos os campos na tela: Visitante - Pré Seleção (Importador/Exportador) - Controle


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  [Tags]  VERIFY   246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Visitante
  Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  E verificar o campo Operação
  E verificar o campo Tipo de Documento
  E verificar o campo Tipo de Foto
  E verificar o campo Tipo de Exportação
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Visitante
  resource_mnu.Clicar No Menu Processo | Foto | Visitante

Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  resource_ctrPreImpExpFotoVisit.Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle

E verificar o campo Operação
  resource_ctrPreImpExpFotoVisit.Verificar o campo Operação

E verificar o campo Tipo de Documento
  resource_ctrPreImpExpFotoVisit.Verificar o campo Tipo de Documento

E verificar o campo Tipo de Foto
  resource_ctrPreImpExpFotoVisit.Verificar o campo Tipo de Foto

E verificar o campo Tipo de Exportação
  resource_ctrPreImpExpFotoVisit.Verificar o campo Tipo de Exportação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"