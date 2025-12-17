*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEnvioMensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Pesquisa de Colaboradores

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Pesquisa de Colaboradores
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem
  E visualizar a tela: ENVIO DE MENSAGEM
  E clicar no botão: Pesquisar 
  Então devo visualizar a tela: Pesquisa de Colaboradores
  E verificar o campo: Nome do Colaborador
  E verificar o campo: Crachá
  E verificar o campo: Matrícula
  E verificar o campo: Tipo do Colaborador
  E verificar o campo: Empresa
  E verificar o campo: Código da Filial
  E verificar o campo: Centro de custo
  E verificar o campo: Código da Escala
  E verificar o campo: Código do Organograma Local 
  E verificar o campo: Local
  E verificar o campo: Grupo de Cargos
  E verificar o campo: Código do Cargo
  E verificar o campo: Empresa Terceira
  E verificar o campo: Contrato
  E verificar o campo: External Key
  E verificar o campo: Total de registros à exibir na consulta

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem

E visualizar a tela: ENVIO DE MENSAGEM
  resource_ctrEnvioMensagem.Acessar Tela: Envio de Mensagem

E clicar no botão: Pesquisar 
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Pesquisa de Colaboradores
  resource_ctrEnvioMensagem.Acessar Tela: Pesquisa de Colaboradores

E verificar o campo: Nome do Colaborador
  resource_ctrEnvioMensagem.Verificar o campo: Nome do Colaborador

E verificar o campo: Crachá
  resource_ctrEnvioMensagem.Verificar o campo: Crachá

E verificar o campo: Matrícula
  resource_ctrEnvioMensagem.Verificar o campo: Matrícula

E verificar o campo: Tipo do Colaborador
  resource_ctrEnvioMensagem.Verificar o campo: Tipo do Colaborador

E verificar o campo: Empresa
  resource_ctrEnvioMensagem.Verificar o campo: Empresa

E verificar o campo: Código da Filial
  resource_ctrEnvioMensagem.Verificar o campo: Código da Filial

E verificar o campo: Centro de custo
  resource_ctrEnvioMensagem.Verificar o campo: Centro de custo

E verificar o campo: Código da Escala
  resource_ctrEnvioMensagem.Verificar o campo: Código da Escala

E verificar o campo: Código do Organograma Local 
  resource_ctrEnvioMensagem.Verificar o campo: Código do Organograma Local 

E verificar o campo: Local
  resource_ctrEnvioMensagem.Verificar o campo: Local 

E verificar o campo: Grupo de Cargos
  resource_ctrEnvioMensagem.Verificar o campo: Grupo de Cargos 

E verificar o campo: Código do Cargo
  resource_ctrEnvioMensagem.Verificar o campo: Código do Cargo 

E verificar o campo: Empresa Terceira
  resource_ctrEnvioMensagem.Verificar o campo: Empresa Terceira 

E verificar o campo: Contrato
  resource_ctrEnvioMensagem.Verificar o campo: Contrato

E verificar o campo: External Key
  resource_ctrEnvioMensagem.Verificar o campo: External Key

E verificar o campo: Total de registros à exibir na consulta  
  resource_ctrEnvioMensagem.Verificar o campo: Total de registros à exibir na consulta