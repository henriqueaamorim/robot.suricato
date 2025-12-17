*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Ambiente (Filtro)
${SCREENNAME}  Ambiente
${APPNAME}     cnsAmbiente

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Ambiente (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando ver a tela: Ambiente (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Ambiente (Filtro)
  E verificar o campo Ambiente
  E verificar o campo Planta
  E verificar o campo Código Ambiente Superior	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando ver a tela: Ambiente (Consulta)
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão Pesquisar Registro
    resource_btn.clicar no Botão Pesquisar Registros

Então devo ver a tela: Ambiente (Filtro)  
    resource_cnsAmbiente.Acessar Tela Ambiente (Filtro)

E verificar o campo Ambiente
    resource_cnsAmbiente.Verificar o campo Ambiente

E verificar o campo Planta
    resource_cnsAmbiente.Verificar o campo Planta

E verificar o campo Código Ambiente Superior	
    resource_cnsAmbiente.Verificar o campo Código Ambiente Superior

E verificar se existe o campo Teste na tela 
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
