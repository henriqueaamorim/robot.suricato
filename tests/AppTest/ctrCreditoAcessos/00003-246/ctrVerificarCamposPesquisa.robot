*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrCreditoAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na Tela: Pesquisa de Colaboradores


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Pesquisa de Colaboradores
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Créditos de Acessos
  Quando clicar na aba: Crédito de Acesso
  E visualizar a tela: Créditos de Acessos 
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
Dado que eu acesse o menu: Registro | Créditos de Acessos
  resource_mnu.Clicar No Menu Registro | Créditos de Acessos

Quando clicar na aba: Crédito de Acesso
  resource_ctrCreditoAcessos.Clicar na Aba: Crédito de Acesso

E visualizar a tela: Créditos de Acessos 
  resource_ctrCreditoAcessos.Acessar Tela: Créditos de Acessos

E clicar no botão: Pesquisar
   resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Pesquisa de Colaboradores
  resource_ctrCreditoAcessos.Acessar Tela: Pesquisa de Colaboradores

E verificar o campo: Nome do Colaborador
  resource_ctrCreditoAcessos.Verificar o campo: Nome do Colaborador

E verificar o campo: Crachá
  resource_ctrCreditoAcessos.Verificar o campo: Crachá

E verificar o campo: Matrícula
  resource_ctrCreditoAcessos.Verificar o campo: Matrícula

E verificar o campo: Tipo do Colaborador
  resource_ctrCreditoAcessos.Verificar o campo: Tipo do Colaborador

E verificar o campo: Empresa
  resource_ctrCreditoAcessos.Verificar o campo: Empresa

E verificar o campo: Código da Filial
  resource_ctrCreditoAcessos.Verificar o campo: Código da Filial

E verificar o campo: Centro de custo
  resource_ctrCreditoAcessos.Verificar o campo: Centro de custo

E verificar o campo: Código da Escala
  resource_ctrCreditoAcessos.Verificar o campo: Código da Escala

E verificar o campo: Código do Organograma Local 
  resource_ctrCreditoAcessos.Verificar o campo: Código do Organograma Local 

E verificar o campo: Local
  resource_ctrCreditoAcessos.Verificar o campo: Local 

E verificar o campo: Grupo de Cargos
  resource_ctrCreditoAcessos.Verificar o campo: Grupo de Cargos 

E verificar o campo: Código do Cargo
  resource_ctrCreditoAcessos.Verificar o campo: Código do Cargo 

E verificar o campo: Empresa Terceira
  resource_ctrCreditoAcessos.Verificar o campo: Empresa Terceira 

E verificar o campo: Contrato
  resource_ctrCreditoAcessos.Verificar o campo: Contrato

E verificar o campo: External Key
  resource_ctrCreditoAcessos.Verificar o campo: External Key

E verificar o campo: Total de registros à exibir na consulta  
  resource_ctrCreditoAcessos.Verificar o campo: Total de registros à exibir na consulta