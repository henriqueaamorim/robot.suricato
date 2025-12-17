*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsimprensaautorizada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Candidato Autorizado
${APPNAME}     cnsimprensaautorizada
${OBJETIVO}    Verificar todos os campos na tela: Candidato Autorizada (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Candidato Autorizada (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Entrada
  Quando visualizar a tela: Candidato Autorizado (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Candidato Autorizada (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Data da Autorização
  E verificar o campo: Candidato
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Entrada
  resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

Quando visualizar a tela: Candidato Autorizado (Consulta)
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizado

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Candidato Autorizada (Filtro)
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizada: Filtro

E verificar a label: Pesquisa
  resource_cnsimprensaautorizada.Verificar a label Pesquisa

E verificar o campo: Data da Autorização
  resource_cnsimprensaautorizada.Verificar o campo Data da Autorização

E verificar o campo: Candidato
  resource_cnsimprensaautorizada.Verificar o campo Candidato

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
