*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrretiradacoletivabeneficios.robot
Resource        ../../../../resource/app/resource_ctrconsumobeneficiosdetalhe.robot
Resource        ../../../../resource/app/resource_Frmretiradacoletivabeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consumo Referente à Atribuição - Detalhe
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Consumo
  Ao visualizar a tela: Consumo de Benefícios
  Então devo selecionar a empresa "TELEMONT ENGENHARIA DE TELECOMUNICAÇÕES"
  E selecionar o benefício "CESTA BÁSICA"
  E clicar no botão: OK
  Então devo visualizar a tela: Consumo de Benefícios
  Ao clicar no botão: Detalhe Atribuição
  Então devo visualizar a tela: Consumo Referente à Atribuição - Detalhe

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Consumo
  resource_mnu.Clicar No Menu Registro | Benefício | Consumo

Ao visualizar a tela: Consumo de Benefícios
  resource_ctrretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios

Então devo selecionar a empresa "${EMPRESA}"
  resource_ctrretiradacoletivabeneficios.Selecionar Empresa ${EMPRESA}

E selecionar o benefício "${BENEFICIO}"
  resource_ctrretiradacoletivabeneficios.Selecionar Benefício ${BENEFICIO}

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consumo de Benefícios
  resource_Frmretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios

Ao clicar no botão: Detalhe Atribuição
  resource_btn.Clicar No Botão Detalhe Atribuição

Então devo visualizar a tela: Consumo Referente à Atribuição - Detalhe
  resource_ctrconsumobeneficiosdetalhe.Acessar Tela Consumo Referente à Atribuição - Detalhe
