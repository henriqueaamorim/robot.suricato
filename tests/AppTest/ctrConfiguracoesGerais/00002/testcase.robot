*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesGerais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Matrícula Automática - Auto-Incrementos Habilitados
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  Ao visualizar a tela: Matrícula Automática
  Então devo selecionar "Sim" nos campos "Auto-Incremento"
  E clicar no botão: Alterar o Registro
  Então devo visualizar a tela: Matrícula Automática - Auto-Incrementos Habilitados

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

Ao visualizar a tela: Matrícula Automática
  resource_ctrConfiguracoesGerais.Acessar Tela Matrícula Automática

Então devo selecionar "Sim" nos campos "Auto-Incremento"
  resource_ctrConfiguracoesGerais.Ativar Auto-Incrementos

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)

Então devo visualizar a tela: Matrícula Automática - Auto-Incrementos Habilitados
  resource_ctrConfiguracoesGerais.Acessar Tela Matrícula Automática - Auto-Incrementos Habilitados
