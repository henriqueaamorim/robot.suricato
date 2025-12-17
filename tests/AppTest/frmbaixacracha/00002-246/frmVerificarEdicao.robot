*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot
Resource        ../../../../resource/app/resource_frmbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Baixa de Crachá Titular (Edição)
${SCREENNAME}  Baixa de Crachá Titular (Edição)
${APPNAME}     frmbaixacracha 


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Baixa de Crachá Titular (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Quando visualizar a tela: Baixa de Crachá Titula (Consulta)
  E no campo: Busca rápida, pesquisar por "Automação"
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Baixa de Crachá Titular (Edição)
  E verificar o campo: Crachá
  E verificar o campo: Código do Colaborador *	
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula	
  E verificar o campo: Nome
  E verificar o campo: Data de Início *	
  E verificar o campo: Hora de Início *	
  E verificar o campo: Data de Término *	
  E verificar o campo: Hora de Término *	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Quando visualizar a tela: Baixa de Crachá Titula (Consulta)
  resource_consbaixacracha.Acessar Tela Baixa de Crachá Titular

E no campo: Busca rápida, pesquisar por "${BUSCAR}"
  resource_btn.clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o registro
  resource_btn.clicar No Botão Editar o Registro

Então devo visualizar a tela: Baixa de Crachá Titular (Edição)
  resource_frmbaixacracha.Acessar Tela Baixa de Crachá Titular/Provisório (Edição)

E verificar o campo: Crachá
  resource_frmbaixacracha.Verificar o campo: Crachá 

E verificar o campo: Código do Colaborador *	
  resource_frmbaixacracha.Verificar o campo: Código do Colaborador *

E verificar o campo: Empresa
  resource_frmbaixacracha.Verificar o campo: Empresa

E verificar o campo: Tipo
  resource_frmbaixacracha.Verificar o campo: Tipo

E verificar o campo: Matrícula	
  resource_frmbaixacracha.Verificar o campo: Matrícula

E verificar o campo: Nome
  resource_frmbaixacracha.Verificar o campo: Nome

E verificar o campo: Data de Início *	
  resource_frmbaixacracha.Verificar o campo: Data de Início *

E verificar o campo: Hora de Início *	
  resource_frmbaixacracha.Verificar o campo: Hora de Início *

E verificar o campo: Data de Término *	
  resource_frmbaixacracha.Verificar o campo: Data de Término *

E verificar o campo: Hora de Término *	
  resource_frmbaixacracha.Verificar o campo: Hora de Término *

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  