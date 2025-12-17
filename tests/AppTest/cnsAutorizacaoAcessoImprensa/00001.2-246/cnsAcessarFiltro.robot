*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoAcessoImprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Autorização de Acesso de Candidato (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Autorização de Acesso de Candidato (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Pesquiar registros
  Então devo visualizar a tela: Autorização de Acesso de Candidato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)

E clicar no botão: Pesquiar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Autorização de Acesso de Candidato (Filtro)  
    resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Autorização de Acesso de Candidato (Filtro)
