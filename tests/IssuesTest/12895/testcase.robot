*** Settings ***

Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../resource/app/resource_ctrqrcode.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Gerar QRCode de colaborador


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Empregado e Gerar Codio QRCode
  [Tags]  PRINT  ISSUES  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Então devo visualizar a tela: Cadastro de Empregado
  #E Clicar No Botão: Avançar Para O Final -- Descomentar para testar em SQL
  E Clicar No Botão: Gerar QRCode
  Então devo visualizar a tela: QRCode


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Então devo visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E Clicar No Botão: Avançar Para O Final
  resource_btn.Clicar No Botão Avançar Para o Final

E Clicar No Botão: Gerar QRCode
  resource_btn.Clicar No Botão Gerar QRCode

Então devo visualizar a tela: QRCode
  resource_ctrqrcode.Printar Tela QRCode