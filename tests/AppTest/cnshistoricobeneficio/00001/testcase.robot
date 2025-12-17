*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrselecaocolbaixahistbeneficios.robot
Resource        ../../../../resource/app/resource_frmbaixacoletivahistbeneficios.robot
Resource        ../../../../resource/app/resource_cnshistoricobeneficio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Histórico Benefício (Consulta)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Histórico
  Ao visualizar a tela: Baixa Coletiva de Históricos
  E selecionar um item no campo Empresa "TESTE"
  E selecionar um item no campo Benefício "Cesta de Natal"
  E preencher o campo Data Exclusão "21/02/2023"
  E clicar no botão: OK
  Então devo visualizar a tela: Retirada Coletiva de Benefícios
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Histórico Benefício (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Histórico
  resource_mnu.Clicar No Menu Registro | Benefício | Histórico

Ao visualizar a tela: Baixa Coletiva de Históricos
  resource_ctrselecaocolbaixahistbeneficios.Acessar Tela Baixa Coletiva de Históricos

E selecionar um item no campo Empresa "${EMPRESA}"
  resource_ctrselecaocolbaixahistbeneficios.Selecionar um item no campo Empresa "${EMPRESA}"

E selecionar um item no campo Benefício "${BENEFICIO}"
  resource_ctrselecaocolbaixahistbeneficios.Selecionar um item no campo Benefício "${BENEFICIO}"

E preencher o campo Data Exclusão "${DATA}"
  resource_ctrselecaocolbaixahistbeneficios.Preencher o campo Data Exclusão "${DATA}"

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Retirada Coletiva de Benefícios
  resource_frmbaixacoletivahistbeneficios.Acessar Tela Retirada Coletiva de Benefícios

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Histórico Benefício (Consulta)
  resource_cnshistoricobeneficio.Acessar Tela Histórico Benefício (Consulta)
