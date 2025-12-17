*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmliberafaixahoraria.robot
Resource        ../../../../resource/app/resource_consliberafaixahoraria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Liberação de Faixa Horária (Busca Externa) através da tela Liberação de Faixa Horária
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação Faixa Horária | Individual
  Ao visualizar a tela: Liberação de Faixa Horária
  E clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Liberação de Faixa Horária (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação Faixa Horária | Individual
  resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Individual

Ao visualizar a tela: Liberação de Faixa Horária
  resource_frmliberafaixahoraria.Acessar Tela Liberação de Faixa Horária

E clicar no botão: Buscar Dados Externos para Crachá
  resource_frmliberafaixahoraria.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Liberação de Faixa Horária (Busca Externa)
  resource_consliberafaixahoraria.Acessar Tela Consulta de Liberação de Faixa Horária (Busca Externa)
