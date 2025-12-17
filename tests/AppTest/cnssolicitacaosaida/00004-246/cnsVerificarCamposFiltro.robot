*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSolicitacaoSaida.robot
Resource        ../../../../resource/app/resource_cnssolicitacaosaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Solicitação de Saída (Filtro)
${APPNAME}     cnssolicitacaosaida
${OBJETIVO}    Verificar todos os campos na tela: Solicitação de Saída (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Solicitação de Saída (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Solicitação de Saída (Filtro)
  E verificar o campo: Código
  E verificar o campo: Data
  E verificar o campo: Hora
  E verificar o campo: Empresa
  E verificar o campo: Tipo 
  E verificar o campo: Matrícula
  E verificar o campo: Tipo Documento
  E verificar o campo: Número Documento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  resource_cnssolicitacaosaida.Acessar Tela Consulta de Solicitação de Saída

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Solicitação de Saída (Filtro)
  resource_cnssolicitacaosaida.Acessar Tela Consulta de Solicitação de Saída (Filtro)

E verificar o campo: Código
  resource_cnssolicitacaosaida.Verificar o campo Código

E verificar o campo: Data
  resource_cnssolicitacaosaida.Verificar o campo Data

E verificar o campo: Hora
  resource_cnssolicitacaosaida.Verificar o campo Hora

E verificar o campo: Empresa  
    resource_cnssolicitacaosaida.Verificar o campo Empresa 

E verificar o campo: Tipo 
  resource_cnssolicitacaosaida.Verificar o campo Tipo 

E verificar o campo: Matrícula
  resource_cnssolicitacaosaida.Verificar o campo Matrícula

E verificar o campo: Tipo Documento
  resource_cnssolicitacaosaida.Verificar o campo Tipo Documento

E verificar o campo: Número Documento
  resource_cnssolicitacaosaida.Verificar o campo Número Documento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
