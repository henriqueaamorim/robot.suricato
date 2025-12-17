*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmReacoesAcesso.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot
Resource        ../../../../resource/app/resource_cnsColetoresPlanta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Codins (Busca Externa) através da tela Consulta de Reações de Acesso
  [Tags]  PRINT  POPULATED   
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Quando eu visualizar a tela: Consulta de Reações de Acesso
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Reações de Acesso (Inclusão)
  E clicar no botão: Buscar Dados Externos para Codin
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Codins (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Quando eu visualizar a tela: Consulta de Reações de Acesso
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Reações de Acesso (Inclusão)
  resource_frmReacoesAcesso.Acessar Tela Reações de Acesso (Inclusão)

E clicar no botão: Buscar Dados Externos para Codin
  resource_frmReacoesAcesso.Clicar No Botão Buscar Dados Externos Para Codin

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Codins (Busca Externa)
  resource_cnsColetoresPlanta.Acessar Tela Consulta de Codins (Busca Externa)
