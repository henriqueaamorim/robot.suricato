*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conshorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Horário de Escala
${APPNAME}     conshorario
${OBJETIVO}    Verificar todas as labels na tela: Horário de Escala (Consulta)

*** Test Cases ***

Testcase: Verificar todas as labels na tela: Horário de Escala (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  Quando ver a tela: Horário de Escala (Consulta)
  Então devo verificar label Código do Horário
  E verificar label: Descrição do Horário
  E verificar label: Turno do Horário
  E verificar label: Tipo de Jornada do Horário
  E verificar label: Jornada de Trabalho
  E verificar label: Faixa Horária Refeitório 
  E verificar label: Faixas Horárias para Controle de Acesso
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

Quando ver a tela: Horário de Escala (Consulta)
  resource_conshorario.Acessar Tela Consulta de Horários

Então devo verificar label Código do Horário
  resource_conshorario.Verificar label Código do Horário

E verificar label: Descrição do Horário
  resource_conshorario.Verificar label Descrição do Horário  

E verificar label: Turno do Horário
  resource_conshorario.Verificar label Turno do Horário

E verificar label: Tipo de Jornada do Horário
  resource_conshorario.Verificar label Tipo de Jornada do Horário

E verificar label: Jornada de Trabalho
  resource_conshorario.Verificar label Jornada de Trabalho

E verificar label: Faixa Horária Refeitório 
  resource_conshorario.Verificar label Faixa Horária Refeitório

E verificar label: Faixas Horárias para Controle de Acesso  
  resource_conshorario.Verificar label Faixas Horárias para Controle de Acesso

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
