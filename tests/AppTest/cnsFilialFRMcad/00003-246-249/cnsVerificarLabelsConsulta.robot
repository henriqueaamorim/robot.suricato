*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFilialFRMcad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}    Verificar todos as Labels na tela: Filial (Consulta)
${SCREENNAME}  Filial
${APPNAME}     cnsFilialFRMcad


*** Test Cases ***

Testcase: Verificar todos as Labels na tela: Filial (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Filial
  Quando visualizar a tela: Filial (Consulta)
  Então verificar a label Chave Externa
  E verificar a label Empresa
  E verificar a label Código da Filial
  E verificar a label Razão Social
  E verificar a label Nome Fantasia
  E verificar a label Cidade
  E verificar a label Estado
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Filial
  resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

Quando visualizar a tela: Filial (Consulta)
  resource_cnsFilialFRMcad.Acessar Tela Consulta de Filial

Então verificar a label Chave Externa
  resource_cnsFilialFRMcad.Verificar a label Chave Externa

E verificar a label Empresa
  resource_cnsFilialFRMcad.Verificar a label Empresa

E verificar a label Código da Filial
  resource_cnsFilialFRMcad.Verificar a label Código da Filial

E verificar a label Razão Social
  resource_cnsFilialFRMcad.Verificar a label Razão Social

E verificar a label Nome Fantasia
  resource_cnsFilialFRMcad.Verificar a label Nome Fantasia

E verificar a label Cidade
  resource_cnsFilialFRMcad.Verificar a label Cidade

E verificar a label Estado  
  resource_cnsFilialFRMcad.Verificar a label Estado

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  