*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Candidato (Edição)


*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Candidato (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Agendamento de Candidato (Inclusão)(Edição)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Agendamento de Candidato (Inclusão)(Edição)
  resource_frmagendamentoimprensa.Acessar Tela Agendamento de Candidato (Atualização)