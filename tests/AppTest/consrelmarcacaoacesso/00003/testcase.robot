*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelmarcacaoacesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Marcação de Acesso - Filtro
${APPNAME}     consrelmarcacaoacesso
${OBJETIVO}    Verificar todos os campos na tela Marcação de Acesso - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Marcação de Acesso - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Marcação de Acesso", e clicar em Pesquisar
  Então devo visualizar a tela: Marcação de Acesso - Filtro
  E verificar o campo Crachá
  E verificar o campo Data
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Marcação de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Marcação de Acesso

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Marcação de Acesso - Filtro
  resource_consrelmarcacaoacesso.Acessar Tela Marcação de Acesso - Filtro

E verificar o campo Crachá
  resource_consrelmarcacaoacesso.Verificar o campo Crachá

E verificar o campo Data
  resource_consrelmarcacaoacesso.Verificar o campo Data

E verificar o campo Planta
  resource_consrelmarcacaoacesso.Verificar o campo Planta

E verificar o campo Codin
  resource_consrelmarcacaoacesso.Verificar o campo Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
