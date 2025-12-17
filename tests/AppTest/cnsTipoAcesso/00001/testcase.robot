*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmReacoesAcesso.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Reação de Alarme (Inclusão)


*** Test Cases ***
Testcase: Acessar Tela: Reação de Alarme (Inclusão)
  [Tags]  PRINT  POPULATED    
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Quando eu visualizar a tela: Consulta de Reações de Acesso
  E clicar no botão: Abrir um novo registro
  Então devo ver a tela: Reações de Acesso (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Tipo do Acesso
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Tipo de Acesso (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Quando eu visualizar a tela: Consulta de Reações de Acesso
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo ver a tela: Reações de Acesso (Inclusão)
  resource_frmReacoesAcesso.Acessar Tela Reações de Acesso (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Tipo do Acesso
  resource_frmReacoesAcesso.Clicar No Botão Buscar Dados Externos Para Tipo do Acesso

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Tipo de Acesso (Busca Externa)
  resource_cnsTipoAcesso.Acessar Tela Consulta de Tipo de Acesso (Busca Externa)
