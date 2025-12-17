*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Acesso de Visitantes - Filtro
${APPNAME}     consrelacessovisitante
${OBJETIVO}    Verificar todos os campos na tela Relatório de Acesso de Visitantes - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Acesso de Visitantes - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Visitante", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório de Acesso de Visitantes
  E verificar a label Nome Visitante
  E verificar a label Tipo Documento Visitante
  E verificar a label Número Documento Visitante
  E verificar a label Empresa Visitante
  E verificar a label Tipo Colaborador Visitado
  E verificar a label Matricula Visitado
  E verificar a label Colaborador Visitado
  E verificar a label Planta
  E verificar a label Codin
  E verificar a label Crachá
  E verificar a label Tipo
  E verificar a label Direção
  E verificar a label Data/Hora Acesso
  E verificar a label Descrição
  E verificar a label Marcação
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

Ao digitar a descrição: "Acesso de Visitante", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso de Visitante

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório de Acesso de Visitantes
  resource_consrelacessovisitante.Acessar Tela Relatório de Acesso de Visitantes

E verificar a label Nome Visitante
  resource_consrelacessovisitante.Verificar a label Nome Visitante

E verificar a label Tipo Documento Visitante
  resource_consrelacessovisitante.Verificar a label Tipo Documento Visitante

E verificar a label Número Documento Visitante
  resource_consrelacessovisitante.Verificar a label Número Documento Visitante

E verificar a label Empresa Visitante
  resource_consrelacessovisitante.Verificar a label Empresa Visitante

E verificar a label Tipo Colaborador Visitado
  resource_consrelacessovisitante.Verificar a label Tipo Colaborador Visitado

E verificar a label Matricula Visitado
  resource_consrelacessovisitante.Verificar a label Matricula Visitado

E verificar a label Colaborador Visitado
  resource_consrelacessovisitante.Verificar a label Colaborador Visitado

E verificar a label Planta
  resource_consrelacessovisitante.Verificar a label Planta

E verificar a label Codin
  resource_consrelacessovisitante.Verificar a label Codin

E verificar a label Crachá
  resource_consrelacessovisitante.Verificar a label Crachá

E verificar a label Tipo
  resource_consrelacessovisitante.Verificar a label Tipo

E verificar a label Direção
  resource_consrelacessovisitante.Verificar a label Direção

E verificar a label Data/Hora Acesso
  resource_consrelacessovisitante.Verificar a label Data/Hora Acesso

E verificar a label Descrição
  resource_consrelacessovisitante.Verificar a label Descrição

E verificar a label Marcação
  resource_consrelacessovisitante.Verificar a label Marcação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
