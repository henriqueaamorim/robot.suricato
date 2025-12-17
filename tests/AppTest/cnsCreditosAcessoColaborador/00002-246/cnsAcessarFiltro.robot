*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar tela: Crédito de Acesso (Filtro)

*** Test Cases ***
TestCase: Acessar tela: Crédito de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registros | Créditos de Acessos 
  Quando clicar na Aba: Colaboradores
  E visualizar a tela: Crédito de Acesso (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Crédito de Acesso (Filtro)  

*** Keywords ***
Dado que eu acesse o menu: Registros | Créditos de Acessos 
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Quando clicar na Aba: Colaboradores  
  resource_cnscreditosacessocolaborador.Clicar Na Aba Colaboradores

E visualizar a tela: Crédito de Acesso (Consulta)
  resource_cnscreditosacessocolaborador.Acessar Tela: Crédito de Acesso (Consulta)  

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar registros  

Então devo visualizar a tela: Crédito de Acesso (Filtro) 
  resource_cnscreditosacessocolaborador.Acessar Tela: Crédito de Acesso (Filtro)
