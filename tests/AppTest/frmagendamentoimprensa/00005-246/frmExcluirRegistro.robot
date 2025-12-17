*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Excluir um Agendamento de Candidato.


*** Test Cases ***
Testcase: Excluir um Agendamento de Candidato
  [Tags]  DELETE  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  E visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no campo: Busca rápida e pesquisar "Automação"
  E clicar no botão: Editar o Registro
  Então devo clicar no botão: Excluir
  E clicar no botão: OK para confirmar a exclusão
  E visualizar a tela: Agendamento de Candidato (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

E visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

E clicar no campo: Busca rápida e pesquisar "${BUSCAR}"
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo clicar no botão: Excluir
  resource_btn.Clicar No Botão Excluir

E clicar no botão: OK para confirmar a exclusão
  resource_btn.Clicar No Botão OK

E visualizar a tela: Agendamento de Candidato (Atualização)  
  resource_frmagendamentoimprensa.Acessar Tela Agendamento de Candidato (Atualização)