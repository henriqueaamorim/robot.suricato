*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_ctrConfiguracoesEntradaVisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar tela Configurações Entrada Visitante e Testar Campo Faixa de Gravação de Crachás Aleatórios

*** Test Cases ***

Testcase: Acessar Tela Configurações Entrada Visitante e Testar Campo
  [Tags]  PRINT  ISSUES
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  Então devo visualizar a tela: Configurações - Entrada de Visitantes
  E Preencher o campo Faixa de Gravação de Crachás Aleatórios "123456789123"
  Então Printar Tela

*** Keywords ***

Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes
  
Então devo visualizar a tela: Configurações - Entrada de Visitantes
  resource_ctrConfiguracoesEntradaVisitantes.Acessar Tela Configurações - Entrada de Visitantes

E Preencher o campo Faixa de Gravação de Crachás Aleatórios "${CRACHA_ALEATORIO}"
  resource_ctrConfiguracoesEntradaVisitantes.Preencher Campo Faixa de Gravação de Crachás Aleatórios "${CRACHA_ALEATORIO}"

Então Printar Tela
  resource_ctrConfiguracoesEntradaVisitantes.Acessar Tela Configurações - Entrada de Visitantes