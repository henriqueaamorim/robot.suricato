*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot
Resource        ../../../../resource/app/resource_frmbaixaautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Baixa de Autorização de Entrada (Atualização)


*** Test Cases ***

Testcase: Acessar Tela Baixa de Autorização de Entrada (Atualização)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Ao visualizar a tela: Consulta de Baixa Autorização Entrada
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Baixa de Autorização de Entrada (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Ao visualizar a tela: Consulta de Baixa Autorização Entrada
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Baixa de Autorização de Entrada (Atualização)
  resource_frmbaixaautorizacaoentrada.Acessar Tela Baixa de Autorização de Entrada (Atualização)
