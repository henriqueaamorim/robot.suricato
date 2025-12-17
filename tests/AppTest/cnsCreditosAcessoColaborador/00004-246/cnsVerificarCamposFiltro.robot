*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Verificar todos os campos na tela: Crédito de Acesso (Filtro)

*** Test Cases ***
TestCase: Verificar todos os campos na tela: Crédito de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registros | Créditos de Acessos 
  Quando clicar na Aba: Colaboradores
  E visualizar a tela: Crédito de Acesso (Consulta)
  E clicar no botão: Pesquisar registros
  E visualizar a tela: Crédito de Acesso (Filtro) 
  Então devo verificar a label: Pesquisa
  E verificar o campo: Código do Colaborador	 
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Data Inicial	


*** Keywords ***
Dado que eu acesse o menu: Registros | Créditos de Acessos 
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Quando clicar na Aba: Colaboradores  
  resource_cnscreditosacessocolaborador.Clicar Na Aba Colaboradores

E visualizar a tela: Crédito de Acesso (Consulta)
  resource_cnscreditosacessocolaborador.Acessar Tela: Crédito de Acesso (Consulta)  

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar registros  

E visualizar a tela: Crédito de Acesso (Filtro) 
  resource_cnscreditosacessocolaborador.Acessar Tela: Crédito de Acesso (Filtro)

Então devo verificar a label: Pesquisa
  resource_cnscreditosacessocolaborador.Verificar label: Pesquisa

E verificar o campo: Código do Colaborador	 
  resource_cnscreditosacessocolaborador.Verificar o campo: Código do Colaborador	

E verificar o campo: Empresa
  resource_cnscreditosacessocolaborador.Verificar o campo: Empresa

E verificar o campo: Tipo do Colaborador	
  resource_cnscreditosacessocolaborador.Verificar o campo: Tipo do Colaborador

E verificar o campo: Matrícula
  resource_cnscreditosacessocolaborador.Verificar o campo: Matrícula

E verificar o campo: Data Inicial	  
  resource_cnscreditosacessocolaborador.Verificar o campo: Data Inicial