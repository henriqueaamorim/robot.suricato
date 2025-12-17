*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrselecaosaldobeneficios.robot
Resource        ../../../../resource/app/resource_cnssaldobeneficioscoletores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Saldos de Benefícios dos Coletores
${APPNAME}     cnssaldobeneficioscoletores
${OBJETIVO}    Verificar todos os campos na tela Consulta de Saldos de Benefícios dos Coletores.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Saldos de Benefícios dos Coletores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  E preencher o campo Data Inicial "05/05/2022"
  E preencher o campo Data Final "05/05/2022"
  E então clicar no botão: OK
  Então devo visualizar a tela: Consulta de Saldos de Benefícios dos Coletores
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Benefício
  E verificar a label Qtde Entregue
  E verificar a label Qtde Retirado
  E verificar a label Qtde Pendente
  E verificar a label Qtde Colaborador
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

Ao digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  resource_ctrselecaosaldobeneficios.Acessar Tela Consulta Saldo de Benefícios nos Coletores

E preencher o campo Data Inicial "${DATA}"
  resource_ctrselecaosaldobeneficios.Preencher o campo Data Inicial "${DATA}"

E preencher o campo Data Final "${DATA}"
  resource_ctrselecaosaldobeneficios.Preencher o campo Data Final "${DATA}"

E então clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta de Saldos de Benefícios dos Coletores
  resource_cnssaldobeneficioscoletores.Acessar Tela Consulta de Saldos de Benefícios dos Coletores

E verificar a label Planta
  resource_cnssaldobeneficioscoletores.Verificar a label Planta

E verificar a label Codin
  resource_cnssaldobeneficioscoletores.Verificar a label Codin

E verificar a label Benefício
  resource_cnssaldobeneficioscoletores.Verificar a label Benefício

E verificar a label Qtde Entregue
  resource_cnssaldobeneficioscoletores.Verificar a label Qtde Entregue

E verificar a label Qtde Retirado
  resource_cnssaldobeneficioscoletores.Verificar a label Qtde Retirado

E verificar a label Qtde Pendente
  resource_cnssaldobeneficioscoletores.Verificar a label Qtde Pendente

E verificar a label Qtde Colaborador
  resource_cnssaldobeneficioscoletores.Verificar a label Qtde Colaborador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
