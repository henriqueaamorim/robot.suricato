*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroocorrencia.robot
Resource        ../../../../resource/app/resource_consocorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Ocorrência (Consulta)
${SCREENNAME}   Ocorrência
${APPNAME}      consocorrencia

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Ocorrência (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  Quando visualizar a tela: Ocorrência (Consulta)
  Então devo verificar a label: Planta
  E verificar a label: Data da Ocorrência
  E verificar a label: Hora da Ocorrência
  E verificar a label: Sequência
  E verificar a label: Tipo
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

Quando visualizar a tela: Ocorrência (Consulta)
  resource_consocorrencia.Acessar Tela: Ocorrência (Consulta)

Então devo verificar a label: Planta
    resource_consocorrencia.Verificar a label: Planta

E verificar a label: Data da Ocorrência
    resource_consocorrencia.Verificar a label: Data da Ocorrência

E verificar a label: Hora da Ocorrência
    resource_consocorrencia.Verificar a label: Hora da Ocorrência

E verificar a label: Sequência
    resource_consocorrencia.Verificar a label: Sequência

E verificar a label: Tipo
    resource_consocorrencia.Verificar a label: Tipo

E verificar a label: Descrição
    resource_consocorrencia.Verificar a label: Descrição

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

