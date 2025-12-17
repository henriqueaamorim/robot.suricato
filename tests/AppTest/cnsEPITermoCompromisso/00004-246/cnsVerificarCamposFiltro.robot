*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPITermoCompromisso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Termo de Compromisso para Entrega de EPI (Filtro)
${SCREENNAME}  Termo de Compromisso para Entrega de EPI
${APPNAME}     cnsEPITermoCompromisso

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Termo de Compromisso para Entrega de EPI (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  Quando ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Termo de Compromisso para Entrega de EPI (Filtro)
  E verificar o campo: Cód
  E verificar o campo: Título
  E verificar o campo: Status
  E verificar se existe o campo Teste na tela
  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

Quando ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)
  resource_cnsEPITermoCompromisso.Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI

E clicar no botão Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Termo de Compromisso para Entrega de EPI (Filtro)
    resource_cnsEPITermoCompromisso.Acessar Tela: Termo de Compromisso para Entrega de EPI (Filtro)

E verificar o campo: Cód
    resource_cnsEPITermoCompromisso.Verificar o campo Cód

E verificar o campo: Título
    resource_cnsEPITermoCompromisso.Verificar o campo Título

E verificar o campo: Status
    resource_cnsEPITermoCompromisso.Verificar o campo Status

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"