*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_frmocorrenciasinfracoes.robot
Resource        ../../../../resource/app/resource_cnsmultascap.robot
Resource        ../../../../resource/app/resource_abaInfracoesCadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Multas (Busca Externa) através da tela Multas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  Quando eu visualizar a tela: Infrações (Atualização)
  E clicar na aba: Multas
  Então devo visualizar a tela: Multas (Atualização)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Multas (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Cód. Infração
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Multas (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando eu visualizar a tela: Infrações (Atualização)
  resource_frminfracoesfrota.Acessar Tela Infrações (Atualização)

E clicar na aba: Multas
  resource_abaInfracoesCadastro.Clicar Na Aba Multas

Então devo visualizar a tela: Multas (Atualização)
  resource_frmocorrenciasinfracoes.Acessar Tela Multas (Atualização)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Multas (Inclusão)
  resource_frmocorrenciasinfracoes.Acessar Tela Multas (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Cód. Infração
  resource_frmocorrenciasinfracoes.Clicar No Botão Buscar Dados Externos Para Cód. Infração

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Multas (Busca Externa)
  resource_cnsmultascap.Acessar Tela Consulta de Multas (Busca Externa)
