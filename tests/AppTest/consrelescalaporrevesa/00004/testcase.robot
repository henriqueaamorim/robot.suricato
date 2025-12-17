*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelescalaporrevesa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
 
${SCREENNAME}  Escalas
${APPNAME}     consrelescalaporrevesa
${OBJETIVO}    Verificar todos os campos na tela Escalas.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Escalas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Escala", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Escalas
  E verificar a label Cód. Escala
  E verificar a label Nome
  E verificar a label Tipo Feriado
  E verificar a label Cód. Feriado
  E verificar a label Turno
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

Ao digitar a descrição: "Escala", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Escala

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Escalas
  resource_consrelescalaporrevesa.Acessar Tela Escalas 

E verificar a label Cód. Escala
  resource_consrelescalaporrevesa.Verificar a label Cód. Escala

E verificar a label Nome
  resource_consrelescalaporrevesa.Verificar a label Nome

E verificar a label Tipo Feriado
  resource_consrelescalaporrevesa.Verificar a label Tipo Feriado

E verificar a label Cód. Feriado
  resource_consrelescalaporrevesa.Verificar a label Cód. Feriado

E verificar a label Turno
  resource_consrelescalaporrevesa.Verificar a label Turno

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
