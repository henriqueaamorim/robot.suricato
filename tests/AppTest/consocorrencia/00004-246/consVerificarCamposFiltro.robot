*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroocorrencia.robot
Resource        ../../../../resource/app/resource_consocorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: Ocorrência (Filtro)
${SCREENNAME}   Ocorrência
${APPNAME}      consocorrencia

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Ocorrência (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  Quando eu visualizar a tela: Ocorrência (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Ocorrência (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Planta
  E verificar o campo: Data da Ocorrência	
  E verificar o campo: Hora da Ocorrência	
  E verificar o campo: Tipo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

Quando eu visualizar a tela: Ocorrência (Consulta)
  resource_consocorrencia.Acessar Tela: Ocorrência (Consulta)

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Ocorrência (Filtro)
  resource_consocorrencia.Acessar Tela: Ocorrência (Filtro)

E verificar a label: Pesquisa
    resource_consocorrencia.Verificar a label Pesquisa

E verificar o campo: Planta
    resource_consocorrencia.Verificar o campo: Planta

E verificar o campo: Data da Ocorrência	
    resource_consocorrencia.Verificar o campo: Data da Ocorrência

E verificar o campo: Hora da Ocorrência	
    resource_consocorrencia.Verificar o campo: Hora da Ocorrência

E verificar o campo: Tipo
    resource_consocorrencia.Verificar o campo: Tipo

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"