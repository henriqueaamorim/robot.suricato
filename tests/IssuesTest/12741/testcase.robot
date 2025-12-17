*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_ctrLoteCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Testar filtro de lote de crachá.

*** Test Cases ***

Testcase: Acessar Tela Lote de Cracha
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  Então devo visualizar a tela: Lote de Cracha
#E devo selecionar o filtro "Matrícula"  #Descomentar esse campo para testar por MATRICULA
  E devo selecionar o filtro "Chave Externa"  #Descomentar esse campo para testar por Chave Externa
  E devo digitar no Campo De: "60" Até: "80"
  E devo pressionar o botão TAB para busca
  Então devo printar a tela
  


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Então devo visualizar a tela: Lote de Cracha
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha

E devo selecionar o filtro "${FILTRO}"  #Descomentar esse campo para testar por MATRICULA ou Chave Externa.
    resource_ctrLoteCracha.Selecionar uma opção no campo Filtro "${FILTRO}"
  
E devo digitar no Campo De: "${CAMPO1}" Até: "${CAMPO2}"
    resource_ctrLoteCracha.Digitar no Campo De: "${CAMPO1}" Até: "${CAMPO2}"

E devo pressionar o botão TAB para busca
    resource_ctrLoteCracha.Pressionar Botão TAB para Busca

Então devo printar a tela
    resource_ctrLoteCracha.Acessar Tela Lote de Cracha


