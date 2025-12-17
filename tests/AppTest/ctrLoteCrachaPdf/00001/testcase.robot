*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLoteCracha.robot
Resource        ../../../../resource/app/resource_ctrLoteCrachaPdf.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Lote de Cracha PDF
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  Ao visualizar a tela: Lote de Cracha
  E selecionar uma opção no campo Tipo do Colaborador "Empregado"
  E preencher o campo Código "2"
  E clicar no botão: Processar
  Então devo visualizar a tela: Lote de Cracha PDF

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Ao visualizar a tela: Lote de Cracha
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha

E selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
  resource_ctrLoteCrachaPdf.Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"

E preencher o campo Código "${COD}"
  resource_ctrLoteCrachaPdf.Preencher o campo Código "${COD}"

E clicar no botão: Processar
  resource_btn.Clicar No Botão Processar

Então devo visualizar a tela: Lote de Cracha PDF
  resource_ctrLoteCrachaPdf.Acessar Tela Lote de Cracha PDF
