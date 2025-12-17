*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consacessocolaborador.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acesso (Filtro)
${APPNAME}     consacessocolaborador
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acesso (Filtro).

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acesso (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acessos dos Colaboradores - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso (Filtro)
  E verificar o campo Tipo de Colaborador
  E verificar o campo Empresa 
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Número do CPF
  E verificar o campo Crachá
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Tipo
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

Ao digitar a descrição: "Acessos dos Colaboradores - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acessos dos Colaboradores - Consulta

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso (Filtro)
  resource_consacessocolaborador.Acessar Tela Consulta de Acesso (Filtro)

E verificar o campo Tipo de Colaborador
  resource_consacessocolaborador.Verificar o campo Tipo de Colaborador

E verificar o campo Empresa 
  resource_consacessocolaborador.Verificar o campo Empresa 

E verificar o campo Matrícula
  resource_consacessocolaborador.Verificar o campo Matrícula

E verificar o campo Nome
  resource_consacessocolaborador.Verificar o campo Nome

E verificar o campo Número do CPF
  resource_consacessocolaborador.Verificar o campo Número do CPF

E verificar o campo Crachá
  resource_consacessocolaborador.Verificar o campo Crachá

E verificar o campo Data
  resource_consacessocolaborador.Verificar o campo Data

E verificar o campo Hora
  resource_consacessocolaborador.Verificar o campo Hora

E verificar o campo Tipo
  resource_consacessocolaborador.Verificar o campo Tipo

E verificar o campo Planta
  resource_consacessocolaborador.Verificar o campo Planta

E verificar o campo Codin
  resource_consacessocolaborador.Verificar o campo Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
