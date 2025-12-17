*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrMarcacaoAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Marcação de Acesso
${APPNAME}     ctrMarcacaoAcesso
${OBJETIVO}    Verificar todos os campos na tela Marcação de Acesso.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Marcação de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Marcação de Acesso - Exportação CSV", e clicar em Pesquisar
  Então devo visualizar a tela: Marcação de Acesso
  E verificar o campo Uso do Crachá
  E verificar o campo Matrícula
  E verificar o campo Empresa
  E verificar a label Data de Acesso
  E verificar o campo Início
  E verificar o campo Término
  E verificar o campo Hora Inicial
  E verificar o campo Hora Final
  E verificar o campo Formato da Data
  E verificar a label Planta / Codin
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Tipo de Acesso
  E verificar o campo Função
  E verificar o campo Direção
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

Ao digitar a descrição: "Marcação de Acesso - Exportação CSV", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Marcação de Acesso - Exportação CSV

Então devo visualizar a tela: Marcação de Acesso
  resource_ctrMarcacaoAcesso.Acessar Tela Marcação de Acesso

E verificar o campo Uso do Crachá
  resource_ctrMarcacaoAcesso.Verificar o campo Uso do Crachá

E verificar o campo Matrícula
  resource_ctrMarcacaoAcesso.Verificar o campo Matrícula

E verificar o campo Empresa
  resource_ctrMarcacaoAcesso.Verificar o campo Empresa

E verificar a label Data de Acesso
  resource_ctrMarcacaoAcesso.Verificar a label Data de Acesso

E verificar o campo Início
  resource_ctrMarcacaoAcesso.Verificar o campo Início

E verificar o campo Término
  resource_ctrMarcacaoAcesso.Verificar o campo Término

E verificar o campo Hora Inicial
  resource_ctrMarcacaoAcesso.Verificar o campo Hora Inicial

E verificar o campo Hora Final
  resource_ctrMarcacaoAcesso.Verificar o campo Hora Final

E verificar o campo Formato da Data
  resource_ctrMarcacaoAcesso.Verificar o campo Formato da Data

E verificar a label Planta / Codin
  resource_ctrMarcacaoAcesso.Verificar a label Planta / Codin

E verificar o campo Planta
  resource_ctrMarcacaoAcesso.Verificar o campo Planta

E verificar o campo Codin
  resource_ctrMarcacaoAcesso.Verificar o campo Codin

E verificar o campo Tipo de Acesso
  resource_ctrMarcacaoAcesso.Verificar o campo Tipo de Acesso

E verificar o campo Função
  resource_ctrMarcacaoAcesso.Verificar o campo Função

E verificar o campo Direção
  resource_ctrMarcacaoAcesso.Verificar o campo Direção

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
