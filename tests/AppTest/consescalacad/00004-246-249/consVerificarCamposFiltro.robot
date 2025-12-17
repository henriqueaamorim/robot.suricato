*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Escalas (Filtro)
${APPNAME}     consescalacad
${OBJETIVO}    Verificar todos os campos na tela: Escala (Consulta)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Escala (Consulta)

  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  Quando visualizar a tela: Escala (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Escala (Filtro)
  E verificar o campo Código da Escala
  E verificar o campo Descrição
  E verificar o campo Chave Externa
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Quando visualizar a tela: Escala (Consulta)
  resource_consescalacad.Acessar Tela Consulta de Escalas

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Escala (Filtro)
  resource_consescalacad.Acessar Tela Consulta de Escalas (Filtro)
  
E verificar o campo Código da Escala
  resource_consescalacad.Verificar o campo Código da Escala

E verificar o campo Descrição
  resource_consescalacad.Verificar o campo Descrição

E verificar o campo Chave Externa
  resource_consescalacad.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
