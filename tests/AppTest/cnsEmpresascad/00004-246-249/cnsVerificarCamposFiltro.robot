*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEmpresascad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Empresas (Filtro)
${SCREENNAME}  Consulta de Empresas (Filtro)
${APPNAME}     cnsEmpresascad


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Empresas (Filtro)
   [Tags]  VERIFY  246  247  248  249
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Empresa
   Quando visualizar a tela: Empresa (Consulta)
   E clicar no botão: Pesquisar Registros
   Então devo visualizar a tela: Empresas (Filtro)
   E verificar a label Pesquisa
   E verificar o campo Empresa
   E verificar o campo Nome
   E verificar o campo Nome Fantasia
   E verificar o campo Chave Externa
   E verificar se existe o campo Teste na tela

*** Keywords ***

Dado que eu acesse o menu Estrutura | Empresa | Empresa
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Quando visualizar a tela: Empresa (Consulta)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empresas (Filtro)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas (Filtro)
  
E verificar a label Pesquisa
  resource_cnsEmpresascad. Verificar a label Pesquisa

E verificar o campo Empresa
  resource_cnsEmpresascad. Verificar o campo Empresa

E verificar o campo Nome
  resource_cnsEmpresascad. Verificar o campo Nome

E verificar o campo Nome Fantasia
  resource_cnsEmpresascad. Verificar o campo Nome Fantasia

E verificar o campo Chave Externa
  resource_cnsEmpresascad. Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
