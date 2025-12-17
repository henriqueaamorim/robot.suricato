*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consEntradaVisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Entrada de Visitantes - Filtro
${APPNAME}     consEntradaVisitantes
${OBJETIVO}    Verificar todos os campos na tela Relatório de Entrada de Visitantes - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Entrada de Visitantes - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Entrada de Visitantes", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Entrada de Visitantes - Filtro
  E verificar o campo Data de Entrada
  E verificar o campo Hora de Entrada
  E verificar o campo Empresa
  E verificar o campo Portaria
  E verificar o campo Código da Planta
  E verificar o campo Matrícula
  E verificar o campo Número do Documento
  E verificar o campo Nome Visitante
  E verificar o campo Placa do Veículo
  E verificar o campo Crachá
  E verificar o campo Status
  E verificar o campo Data da Saída
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

Ao digitar a descrição: "Relatório de Entrada de Visitantes", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Entrada de Visitantes

Então devo visualizar a tela: Relatório de Entrada de Visitantes - Filtro
  resource_consEntradaVisitantes.Acessar Tela Relatório de Entrada de Visitantes - Filtro

E verificar o campo Data de Entrada
  resource_consEntradaVisitantes.Verificar o campo Data de Entrada

E verificar o campo Hora de Entrada
  resource_consEntradaVisitantes.Verificar o campo Hora de Entrada

E verificar o campo Empresa
  resource_consEntradaVisitantes.Verificar o campo Empresa

E verificar o campo Portaria
  resource_consEntradaVisitantes.Verificar o campo Portaria

E verificar o campo Código da Planta
  resource_consEntradaVisitantes.Verificar o campo Código da Planta

E verificar o campo Matrícula
  resource_consEntradaVisitantes.Verificar o campo Matrícula

E verificar o campo Número do Documento
  resource_consEntradaVisitantes.Verificar o campo Número do Documento

E verificar o campo Nome Visitante
  resource_consEntradaVisitantes.Verificar o campo Nome Visitante

E verificar o campo Placa do Veículo
  resource_consEntradaVisitantes.Verificar o campo Placa do Veículo

E verificar o campo Crachá
  resource_consEntradaVisitantes.Verificar o campo Crachá

E verificar o campo Status
  resource_consEntradaVisitantes.Verificar o campo Status

E verificar o campo Data da Saída
  resource_consEntradaVisitantes.Verificar o campo Data da Saída

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
