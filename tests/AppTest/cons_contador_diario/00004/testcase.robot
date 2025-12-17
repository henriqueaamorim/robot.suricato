*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cons_contador_diario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Contagem de Acessos Diários
${APPNAME}     cons_contador_diario
${OBJETIVO}    Verificar todos os campos na tela Consulta de Contagem de Acessos Diários.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Contagem de Acessos Diários
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Contagem de acesso diario", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Contagem de Acessos Diários
  E verificar a label Matrícula
  E verificar a label Crachá
  E verificar a label Nome
  E verificar a label Cód. Empresa
  E verificar a label Empresa
  E verificar a label Centro de Custo
  E verificar a label 01
  E verificar a label 02
  E verificar a label 03
  E verificar a label 04
  E verificar a label 05
  E verificar a label 06
  E verificar a label 07
  E verificar a label 08
  E verificar a label 09
  E verificar a label 10
  E verificar a label 11
  E verificar a label 12
  E verificar a label 13
  E verificar a label 14
  E verificar a label 15
  E verificar a label 16
  E verificar a label 17
  E verificar a label 18
  E verificar a label 19
  E verificar a label 20
  E verificar a label 21
  E verificar a label 22
  E verificar a label 23
  E verificar a label 24
  E verificar a label 25
  E verificar a label 26
  E verificar a label 27
  E verificar a label 28
  E verificar a label 29
  E verificar a label 30
  E verificar a label 31
  E verificar a label Total
  E verificar a label Data Inicial
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

Ao digitar a descrição: "Consulta de Contagem de acesso diario", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Contagem de acesso diario

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Contagem de Acessos Diários
  resource_cons_contador_diario.Acessar Tela Consulta de Contagem de Acessos Diários

E verificar a label Matrícula
  resource_cons_contador_diario.Verificar a label Matrícula

E verificar a label Crachá
  resource_cons_contador_diario.Verificar a label Crachá

E verificar a label Nome
  resource_cons_contador_diario.Verificar a label Nome

E verificar a label Cód. Empresa
  resource_cons_contador_diario.Verificar a label Cód. Empresa

E verificar a label Empresa
  resource_cons_contador_diario.Verificar a label Empresa

E verificar a label Centro de Custo
  resource_cons_contador_diario.Verificar a label Centro de Custo

E verificar a label 01
  resource_cons_contador_diario.Verificar a label 01

E verificar a label 02
  resource_cons_contador_diario.Verificar a label 02

E verificar a label 03
  resource_cons_contador_diario.Verificar a label 03

E verificar a label 04
  resource_cons_contador_diario.Verificar a label 04

E verificar a label 05
  resource_cons_contador_diario.Verificar a label 05

E verificar a label 06
  resource_cons_contador_diario.Verificar a label 06

E verificar a label 07
  resource_cons_contador_diario.Verificar a label 07

E verificar a label 08
  resource_cons_contador_diario.Verificar a label 08

E verificar a label 09
  resource_cons_contador_diario.Verificar a label 09

E verificar a label 10
  resource_cons_contador_diario.Verificar a label 10

E verificar a label 11
  resource_cons_contador_diario.Verificar a label 11

E verificar a label 12
  resource_cons_contador_diario.Verificar a label 12

E verificar a label 13
  resource_cons_contador_diario.Verificar a label 13

E verificar a label 14
  resource_cons_contador_diario.Verificar a label 14

E verificar a label 15
  resource_cons_contador_diario.Verificar a label 15

E verificar a label 16
  resource_cons_contador_diario.Verificar a label 16

E verificar a label 17
  resource_cons_contador_diario.Verificar a label 17

E verificar a label 18
  resource_cons_contador_diario.Verificar a label 18

E verificar a label 19
  resource_cons_contador_diario.Verificar a label 19

E verificar a label 20
  resource_cons_contador_diario.Verificar a label 20

E verificar a label 21
  resource_cons_contador_diario.Verificar a label 21

E verificar a label 22
  resource_cons_contador_diario.Verificar a label 22

E verificar a label 23
  resource_cons_contador_diario.Verificar a label 23

E verificar a label 24
  resource_cons_contador_diario.Verificar a label 24

E verificar a label 25
  resource_cons_contador_diario.Verificar a label 25

E verificar a label 26
  resource_cons_contador_diario.Verificar a label 26

E verificar a label 27
  resource_cons_contador_diario.Verificar a label 27

E verificar a label 28
  resource_cons_contador_diario.Verificar a label 28

E verificar a label 29
  resource_cons_contador_diario.Verificar a label 29

E verificar a label 30
  resource_cons_contador_diario.Verificar a label 30

E verificar a label 31
  resource_cons_contador_diario.Verificar a label 31

E verificar a label Total
  resource_cons_contador_diario.Verificar a label Total

E verificar a label Data Inicial
  resource_cons_contador_diario.Verificar a label Data Inicial

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
