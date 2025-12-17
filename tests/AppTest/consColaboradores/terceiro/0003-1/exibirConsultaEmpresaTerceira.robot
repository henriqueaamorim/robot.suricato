*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Exibir label “Empresa Terceira” apenas para tipo de colaborador Terceiro


*** Test Cases ***
Testcase: Exibir label “Empresa Terceira” apenas para tipo de colaborador Terceiro
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que acesse o Menu Identificação | Colaborador | Terceiro | Terceiro
  E visualizar a Tela: Terceiro (Consulta)
  Então o campo "Empresa Terceira" deve ser exibido na grade de resultados



*** Keywords ***
Dado que acesse o Menu Identificação | Colaborador | Terceiro | Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

E visualizar a Tela: Terceiro (Consulta)
  resource_conscolaboradores.Acessar Tela: Terceiro (Consulta)  

Então o campo "Empresa Terceira" deve ser exibido na grade de resultados
  resource_conscolaboradores.Verificar a label Empresa Terceira - Positivo

