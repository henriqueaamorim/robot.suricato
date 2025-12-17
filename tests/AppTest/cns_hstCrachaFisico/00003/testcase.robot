*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_hstCrachaFisico.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Histórico de Crachá x Numero Fisico - Filtro
${APPNAME}     cns_hstCrachaFisico
${OBJETIVO}    Verificar todos os campos na tela Consulta Histórico de Crachá x Numero Fisico - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Histórico de Crachá x Numero Fisico - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  E verificar o campo Empresa
  E verificar o campo Tipo
  E verificar o campo Matrícula      
  E verificar o campo Nome 
  E verificar o campo Crachá Lógico   
  E verificar o campo Data de Início      
  E verificar o campo Hora de Início      
  E verificar o campo Crachá Físico 
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

Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Histórico de Crachá x Numero Fisico

Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  resource_cns_hstCrachaFisico.Acessar Tela Consulta Histórico de Crachá x Numero Fisico - Filtro

E verificar o campo Empresa
  resource_cns_hstCrachaFisico.Verificar o campo Empresa

E verificar o campo Tipo
  resource_cns_hstCrachaFisico.Verificar o campo Tipo

E verificar o campo Matrícula      
  resource_cns_hstCrachaFisico.E verificar o campo Matrícula

E verificar o campo Nome 
  resource_cns_hstCrachaFisico.E verificar o campo Nome 

E verificar o campo Crachá Lógico   
  resource_cns_hstCrachaFisico.E verificar o campo Crachá Lógico

E verificar o campo Data de Início      
  resource_cns_hstCrachaFisico.E verificar o campo Data de Início

E verificar o campo Hora de Início      
  resource_cns_hstCrachaFisico.E verificar o campo Hora de Início

E verificar o campo Crachá Físico   
  resource_cns_hstCrachaFisico.E verificar o campo Crachá Físico

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
