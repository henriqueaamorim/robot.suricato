*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEmpresascad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Empresas (Consulta)
${SCREENNAME}  Consulta de Empresas
${APPNAME}     cnsEmpresascad


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Empresas (Consulta)
   [Tags]  VERIFY  246  247  248  249
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Empresa
   Quando visualizar a tela: Empresa (Consulta)
   Então verificar a label Chave Externa
   E verificar a label Empresa
   E verificar a label Nome
   E verificar a label Nome Fantasia
   E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Empresa
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Quando visualizar a tela: Empresa (Consulta)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas

Então verificar a label Chave Externa
  resource_cnsEmpresascad.Verificar a label Chave Externa

E verificar a label Empresa
  resource_cnsEmpresascad.Verificar a label Empresa

E verificar a label Nome
  resource_cnsEmpresascad.Verificar a label Nome

E verificar a label Nome Fantasia
  resource_cnsEmpresascad.Verificar a label Nome Fantasia

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
