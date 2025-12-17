*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoAcessoImprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Autorização de Acesso de Candidato (Filtro)
${SCREENNAME}  Autorização de Acesso de Candidato
${APPNAME}     cnsAutorizacaoAcessoImprensa

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Autorização de Acesso de Candidato (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  E clicar no botão: Pesquiar registros
  Então devo visualizar a tela: Autorização de Acesso de Candidato (Filtro)
  E verificar o campo: Nome
  E verificar o campo: CPF	
  E verificar o campo: Carteira de Identidade	
  E verificar o campo: Data	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)

E clicar no botão: Pesquiar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Autorização de Acesso de Candidato (Filtro)  
    resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Autorização de Acesso de Candidato (Filtro)

E verificar o campo: Nome
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Nome na tela: Autorização de Acesso de Candidato (Filtro)

E verificar o campo: CPF	
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: CPF na tela: Autorização de Acesso de Candidato (Filtro)

E verificar o campo: Carteira de Identidade	
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Carteira de Identidade na tela: Autorização de Acesso de Candidato (Filtro)

E verificar o campo: Data	
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Data na tela: Autorização de Acesso de Candidato (Filtro)

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"