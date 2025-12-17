*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEscolherFaixaPorCracha.robot
Resource        ../../../../resource/app/resource_ctrSmartCardActiveXPorFaixa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Gravação de Crachá Por Faixa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  Ao visualizar a tela: Gravação de Crachá Por Faixa
  E preencher o campo De "1"
  E preencher o campo Até "10"
  E selecionar um item no campo Tipo de Crachá "Empregado"
  E clicar no botão: OK
  Então devo visualizar a tela: Gravação de Crachá Por Faixa

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

Ao visualizar a tela: Gravação de Crachá Por Faixa
  resource_ctrEscolherFaixaPorCracha.Acessar Tela Gravação de Crachá Por Faixa

E preencher o campo De "${FAIXA}"
  resource_ctrEscolherFaixaPorCracha.Preencher o campo De "${FAIXA}"

E preencher o campo Até "${FAIXA}"
  resource_ctrEscolherFaixaPorCracha.Preencher o campo Até "${FAIXA}"

E selecionar um item no campo Tipo de Crachá "${CRACHA}"
  resource_ctrEscolherFaixaPorCracha.Selecionar um item no campo Tipo de Crachá "${CRACHA}"

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Gravação de Crachá Por Faixa
  resource_ctrSmartCardActiveXPorFaixa.Acessar Tela Gravação de Crachá Por Faixa
