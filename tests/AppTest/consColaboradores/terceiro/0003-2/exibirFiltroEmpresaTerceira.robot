*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Exibir campo “Empresa Terceira” apenas para tipo de colaborador Terceiro


*** Test Cases ***
Testcase: Exibir campo “Empresa Terceira” apenas para tipo de colaborador Terceiro
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que acesse o Menu Identificação | Colaborador | Terceiro | Terceiro
  E visualizar a Tela: Terceiro (Consulta)
  E clicar no botão Pesquisar
  E visualizar a tela: Terceiro (Filtro)
  Então o campo "Empresa Terceira" deve ser exibido 



*** Keywords ***
Dado que acesse o Menu Identificação | Colaborador | Terceiro | Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

E visualizar a Tela: Terceiro (Consulta)
  resource_conscolaboradores.Acessar Tela: Terceiro (Consulta)  

E clicar no botão Pesquisar
  resource_btn.E Clicar No Botão Pesquisar Registros

E visualizar a tela: Terceiro (Filtro)
  resource_conscolaboradores.Acessar Tela: Terceiro (Filtro)

Então o campo "Empresa Terceira" deve ser exibido
   resource_conscolaboradores.Verificar o campo Empresa Terceira - Positivo

