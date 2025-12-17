*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Autorizações de Saída (Filtro)
${APPNAME}     cnsAutorizacaoSaida
${OBJETIVO}    Verificar todos os campos na tela: Autorizações de Saída (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Autorizações de Saída (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Então devo visualizar a tela: Autorizações de Saída (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Autorizações de Saída (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Código
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Empresa
  E verificar o campo Tipo
  E verificar o campo Matrícula
  E verificar o campo Tipo Documento
  E verificar o campo Número Documento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Então devo visualizar a tela: Autorizações de Saída (Consulta)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Autorizações de Saída (Filtro)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída (Filtro)
  
E verificar a label Pesquisa
  resource_cnsAutorizacaoSaida.Verificar a label Pesquisa

E verificar o campo Código
  resource_cnsAutorizacaoSaida.Verificar o campo Código

E verificar o campo Data
  resource_cnsAutorizacaoSaida.Verificar o campo Data

E verificar o campo Hora
  resource_cnsAutorizacaoSaida.Verificar o campo Hora

E verificar o campo Empresa
  resource_cnsAutorizacaoSaida.Verificar o campo Empresa

E verificar o campo Tipo
  resource_cnsAutorizacaoSaida.Verificar o campo Tipo

E verificar o campo Matrícula
  resource_cnsAutorizacaoSaida.Verificar o campo Matrícula

E verificar o campo Tipo Documento
  resource_cnsAutorizacaoSaida.Verificar o campo Tipo Documento

E verificar o campo Número Documento
  resource_cnsAutorizacaoSaida.Verificar o campo Número Documento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
