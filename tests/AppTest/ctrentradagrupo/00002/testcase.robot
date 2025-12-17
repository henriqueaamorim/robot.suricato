*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_ctrentradagrupo.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Entrada de Grupo de Visitantes.


*** Test Cases ***

Testcase: Cadastrar uma Entrada de Grupo de Visitantes
  [Tags]  REGISTER  POLYVALENT
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Nova entrada
  Então devo visualizar a tela: Entrada de Grupo de Visitante
  E selecionar uma opção no campo Portaria "2 - AUG"
  E preencher o campo Visitado "2"
  E preencher o campo Grupo de Visitante "1"
  E preencher o campo Visitante Responsável "15101"
  E preencher o campo Veículo "3"
  E preencher o campo Crachá do Responsável "3000011"
  E selecionar uma opção no campo Grupo de Acesso "ACESSO"
  E selecionar uma opção no campo Tipo de Visita "TESTEREF"
  E preencher o campo Observações "Observações"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Entrada de Grupo de Visitante

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Nova entrada
  resource_btn.Clicar No Botão Nova Entrada

Então devo visualizar a tela: Entrada de Grupo de Visitante
  resource_ctrentradagrupo.Acessar Tela Entrada de Grupo de Visitante

E selecionar uma opção no campo Portaria "${PORTARIA}"
  resource_ctrentradagrupo.Selecionar uma opção no campo Portaria "${PORTARIA}"

E preencher o campo Visitado "${VISITADO}"
  resource_ctrentradagrupo.Preencher o campo Visitado "${VISITADO}"

E preencher o campo Grupo de Visitante "${VISITANTE}"
  resource_ctrentradagrupo.Preencher o campo Grupo de Visitante "${VISITANTE}"

E preencher o campo Visitante Responsável "${RESPONSAVEL}"
  resource_ctrentradagrupo.Preencher o campo Visitante Responsável "${RESPONSAVEL}"

E preencher o campo Veículo "${VEICULO}"
  resource_ctrentradagrupo.Preencher o campo Veículo "${VEICULO}"

E preencher o campo Crachá do Responsável "${CRACHA}"
  resource_ctrentradagrupo.Preencher o campo Crachá do Responsável "${CRACHA}"

E selecionar uma opção no campo Grupo de Acesso "${ACESSO}"
  resource_ctrentradagrupo.Selecionar uma opção no campo Grupo de Acesso "${ACESSO}"

E selecionar uma opção no campo Tipo de Visita "${VISITA}"
  resource_ctrentradagrupo.Selecionar uma opção no campo Tipo de Visita "${VISITA}"

E preencher o campo Observações "${OBSERVACOES}"
  resource_ctrentradagrupo.Preencher o campo Observações "${OBSERVACOES}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro
