*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Crachá Bloqueado (Consulta)
${SCREENNAME}   Crachá Bloqueado
${APPNAME}      cnsBloqueioCracha

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Crachá Bloqueado (Consulta)
  [Tags]  VERIFY    246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando visualizar a tela: Crachá Bloqueado (Consulta)
  Então devo verificar a label: Crachá
  E verificar label: Número Físico
  E verificar label: Data do Bloqueio
  E verificar label: Hora do Bloqueio
  E verificar label: Motivo
  E verificar label: Data da Liberação
  E verificar label: Hora da Liberação
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando visualizar a tela: Crachá Bloqueado (Consulta)
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

Então devo verificar a label: Crachá
    resource_cnsBloqueioCracha.Verificar a label: Crachá

E verificar label: Número Físico
    resource_cnsBloqueioCracha.Verificar a label: Número Físico

E verificar label: Data do Bloqueio
    resource_cnsBloqueioCracha.Verificar a label: Data do Bloqueio

E verificar label: Hora do Bloqueio
    resource_cnsBloqueioCracha.Verificar a label: Hora do Bloqueio

E verificar label: Motivo
    resource_cnsBloqueioCracha.Verificar a label: Motivo

E verificar label: Data da Liberação
    resource_cnsBloqueioCracha.Verificar a label: Hora da Liberação

E verificar label: Hora da Liberação
    resource_cnsBloqueioCracha.Verificar a label: Hora da Liberação

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"