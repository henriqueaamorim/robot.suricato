*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelalarmesnaotratados.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Alarmes não Tratados
${APPNAME}     consrelalarmesnaotratados
${OBJETIVO}   Verificar todos os campos na tela Alarmes não Tratados.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Alarmes não Tratados
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Alarmes Não Tratados", e clicar em Pesquisar
  E novamente clicar em Pesquisar
  Então devo visualizar a tela: Alarmes não Tratados
  E verificar a label Data do Alarme
  E verificar a label Hora do Alarme
  E verificar a label Descrição
  E verificar a label Planta
  E verificar a label Código
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

Ao digitar a descrição: "Alarmes Não Tratados", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Alarmes Não Tratados

E novamente clicar em Pesquisar
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Alarmes não Tratados
  resource_consrelalarmesnaotratados.Acessar Tela Alarmes não Tratados

E verificar a label Data do Alarme
  resource_consrelalarmesnaotratados.Verificar a label Data do Alarme

E verificar a label Hora do Alarme
  resource_consrelalarmesnaotratados.Verificar a label Hora do Alarme

E verificar a label Descrição
  resource_consrelalarmesnaotratados.Verificar a label Descrição

E verificar a label Planta
  resource_consrelalarmesnaotratados.Verificar a label Planta

E verificar a label Código
  resource_consrelalarmesnaotratados.Verificar a label Código

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
