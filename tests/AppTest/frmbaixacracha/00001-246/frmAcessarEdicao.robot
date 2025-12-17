*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot
Resource        ../../../../resource/app/resource_frmbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Baixa de Crachá Titular (Edição)


*** Test Cases ***
Testcase: Acessar Tela: Baixa de Crachá Titular (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Quando visualizar a tela: Baixa de Crachá Titula (Consulta)
  E no campo: Busca rápida, pesquisar por "Automação"
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Baixa de Crachá Titular (Edição)


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