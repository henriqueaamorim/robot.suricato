*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas aos campos na Tela: Processo de Exportação (Filtro)
${SCREENNAME}  Processo de Exportação
${APPNAME}     cnsProcessoAutomatico

*** Test Cases ***
Testcase: Verificar todas aos campos na Tela: Processo de Exportação (Filtro)
# Exportação #
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Exportação
  Quando eu visualizar a tela: Processo de Exportação (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Processo de Exportação (Filtro)
  E verificar a label: Pesquisar
  E verificar o campo: Código
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Exportação
  resource_mnu.Clicar No Menu Processo | Exportação

Quando eu visualizar a tela: Processo de Exportação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Exportação

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Exportação (Filtro)
    resource_cnsProcessoAutomatico.Acessar Tela Processo de Exportação (Filtro)

E verificar a label: Pesquisar
    resource_cnsProcessoAutomatico.Verificar a label: Pesquisa

E verificar o campo: Código
    resource_cnsProcessoAutomatico.Verificar o campo: Código

E verificar o campo: Descrição  
    resource_cnsProcessoAutomatico.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

