*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Créditos de Acesso
  [Tags]  PRINT  POPULATED   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso
  Quando clicar na aba: Visitantes
  E visualizar a tela: Crédito de Acesso de Visitante (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Crédito de Acesso de Visitante (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código do Visitante	
  E verificar o campo: Tipo de Documento	
  E verificar o campo: Documento
  E verificar o campo: Data Inicial	
 
*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Quando clicar na aba: Visitantes
  resource_cnsCreditosAcessoVisitante.Clicar Na Aba Visitante

E visualizar a tela: Crédito de Acesso de Visitante (Consulta)
  resource_cnsCreditosAcessoVisitante.Acessar Tela Consulta de Créditos de Acesso de Visitante

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crédito de Acesso de Visitante (Filtro)
  resource_cnsCreditosAcessoVisitante.Acessar tela: Crédito de Acesso de Visitante (Filtro)

E verificar a label: Pesquisa
  resource_cnsCreditosAcessoVisitante.Verificar a label: Pesquisa

E verificar o campo: Código do Visitante	
  resource_cnsCreditosAcessoVisitante.Verificar o campo: Código do Visitante

E verificar o campo: Tipo de Documento	
  resource_cnsCreditosAcessoVisitante.Verificar o campo: Tipo de Documento

E verificar o campo: Documento
  resource_cnsCreditosAcessoVisitante.Verificar o campo: Documento

E verificar o campo: Data Inicial	   
  resource_cnsCreditosAcessoVisitante.Verificar o campo: Data Inicial