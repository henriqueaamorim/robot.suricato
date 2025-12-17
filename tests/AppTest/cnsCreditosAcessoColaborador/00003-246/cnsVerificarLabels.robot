*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Verificar todas as labels na tela: Crédito de Acesso (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Crédito de Acesso (Consulta)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Créditos de Acessos 
  Quando clicar na Aba: Colaboradores
  Então devo visualizar a tela: Crédito de Acesso (Consulta)
  E verificar a label: Código do Colaborador
  E verificar a label: Nome
  E verificar a label: Empresa  
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Data Inicial
  E verificar a label: Início da Faixa
  E verificar a label: Data Final
  E verificar a label: Fim da Faixa

*** Keywords ***
Dado que eu acesse o menu: Registro | Créditos de Acessos
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Quando clicar na Aba: Colaboradores
  resource_cnscreditosacessocolaborador.Clicar Na Aba Colaboradores

Então devo visualizar a tela: Crédito de Acesso (Consulta)
  resource_cnscreditosacessocolaborador.Acessar Tela: Crédito de Acesso (Consulta)

E verificar a label: Código do Colaborador
  resource_cnscreditosacessocolaborador.Verificar label: Código do Colaborador

E verificar a label: Nome
  resource_cnscreditosacessocolaborador.Verificar label: Nome

E verificar a label: Empresa  
  resource_cnscreditosacessocolaborador.Verifica label: Empresa

E verificar a label: Tipo do Colaborador
  resource_cnscreditosacessocolaborador.Verificar label: Tipo do Colaborador

E verificar a label: Matrícula
  resource_cnscreditosacessocolaborador.Verificar label: Matrícula

E verificar a label: Data Inicial
  resource_cnscreditosacessocolaborador.Verificar label: Data Inicial

E verificar a label: Início da Faixa
  resource_cnscreditosacessocolaborador.Verificar label: Início da Faixa

E verificar a label: Data Final
  resource_cnscreditosacessocolaborador.Verificar label: Data Final

E verificar a label: Fim da Faixa
  resource_cnscreditosacessocolaborador.Verificar label: Fim da Faixa
