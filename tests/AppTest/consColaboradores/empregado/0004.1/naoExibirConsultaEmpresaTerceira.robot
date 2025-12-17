*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Não exibir label “Empresa Terceira” apenas para tipo de colaborador Terceiro


*** Test Cases ***
Testcase: Não exibir label “Empresa Terceira” apenas para tipo de colaborador Terceiro
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que acesse o Menu Identificação | Colaborador | Empregado
  E visualizar a Tela: Empregado (Consulta)
  Então o label "Empresa Terceira" não deve ser exibido na grade de resultados



*** Keywords ***
Dado que acesse o Menu Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

E visualizar a Tela: Empregado (Consulta)
  resource_conscolaboradores.Acessar Tela: Empregado (Consulta)  

Então o label "Empresa Terceira" não deve ser exibido na grade de resultados
   resource_conscolaboradores.Verificar a label Empresa Terceira - Negativo

