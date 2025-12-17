*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consrestrito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Acesso as Áreas Restritas (Consulta)	
${SCREENNAME}  Acesso as Áreas Restritas
${APPNAME}     consrestrito


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Acesso as Áreas Restritas (Consulta)	
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)
  E clicar no botão: Pesquisa
  Então devo vizualizar a tela: Acesso as Áreas Restritas (Consulta)
  E verificar a label: Tipo de Pessoa
  E verificar a label: Grupo de Acesso
  E verificar a label: Detalhe Titular
  E verificar a label: Detalhe Acesso
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
    resource_mnu.Clicar No Menu Registro | Área Restrita | Consultar Acesso

Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)
    resource_consrestrito.Acessar Tela: Acesso as Áreas Restritas (Filtro)

E clicar no botão: Pesquisa
    resource_btn.Clicar No Botão Pesquisa

Então devo vizualizar a tela: Acesso as Áreas Restritas (Consulta)    
    resource_consrestrito.Acessar Tela: Acesso as Áreas Restritas (Consulta)

E verificar a label: Tipo de Pessoa
    resource_consrestrito.Verificar a label: Tipo de Pessoa

E verificar a label: Grupo de Acesso
    resource_consrestrito.Verificar a label: Grupo de Acesso

E verificar a label: Detalhe Titular
    resource_consrestrito.Verificar a label: Detalhe Titular

E verificar a label: Detalhe Acesso
    resource_consrestrito.Verificar a label: Detalhe Acesso

E verificar se existe o campo Teste na tela     
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"