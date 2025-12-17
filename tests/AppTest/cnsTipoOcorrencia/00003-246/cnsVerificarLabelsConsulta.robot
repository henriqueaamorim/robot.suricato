*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoOcorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Tipo de Ocorrência (Consulta)
${SCREENNAME}  Tipo de Ocorrência
${APPNAME}     cnsTipoOcorrencia

*** Test Cases ***

Testcase: Verificar todas as labels na tela: Tipo de Ocorrência (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  Quando visualizar a tela: Tipo de Ocorrência (Consulta)
  Então devo verificar a label: Tipo de Ocorrência
  E verificar a label: Descrição
  E verificar a label: Enviar E-mail
  E verificar a label: Endereço de E-mail
  E verificar a label: Endereço de Cópia de E-mail
  E verificar a label: [texto] de E-mail
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Quando visualizar a tela: Tipo de Ocorrência (Consulta)
  resource_cnsTipoOcorrencia.Acessar Tela: Tipo de Ocorrência (Consulta)

Então devo verificar a label: Tipo de Ocorrência
    resource_cnsTipoOcorrencia.Verificar a label: Tipo de Ocorrência

E verificar a label: Descrição
    resource_cnsTipoOcorrencia.Verificar a label: Descrição

E verificar a label: Enviar E-mail
    resource_cnsTipoOcorrencia.Verificar a label: Enviar E-mail

E verificar a label: Endereço de E-mail
    resource_cnsTipoOcorrencia.Verificar a label: Endereço de E-mail

E verificar a label: Endereço de Cópia de E-mail
    resource_cnsTipoOcorrencia.Verificar a label: Endereço de Cópia de E-mail

E verificar a label: [texto] de E-mail
    resource_cnsTipoOcorrencia.Verificar a label: [texto] de E-mail

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"