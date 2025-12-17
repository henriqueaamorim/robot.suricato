*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelmovimentocolaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Movimento de Colaboradores
${APPNAME}     consrelmovimentocolaborador
${OBJETIVO}    Verificar todos os campos na tela Movimento de Colaboradores.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Movimento de Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Movimento de Colaboradores", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Movimento de Colaboradores
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Tipo de Colaborador
  E verificar a label Data
  E verificar a label Hora
  E verificar a label Direção
  E verificar a label Código da Planta
  E verificar a label Descrição da Planta
  E verificar a label Código do Codin
  E verificar a label Descrição do Codin
  E verificar a label Tipo de Acesso
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

Ao digitar a descrição: "Movimento de Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Movimento de Colaboradores

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Movimento de Colaboradores
  resource_consrelmovimentocolaborador.Acessar Tela Movimento de Colaboradores

E verificar a label Matrícula
  resource_consrelmovimentocolaborador.Verificar a label Matrícula

E verificar a label Nome
  resource_consrelmovimentocolaborador.Verificar a label Nome

E verificar a label Tipo de Colaborador
  resource_consrelmovimentocolaborador.Verificar a label Tipo de Colaborador

E verificar a label Data
  resource_consrelmovimentocolaborador.Verificar a label Data

E verificar a label Hora
  resource_consrelmovimentocolaborador.Verificar a label Hora

E verificar a label Direção
  resource_consrelmovimentocolaborador.Verificar a label Direção

E verificar a label Código da Planta
  resource_consrelmovimentocolaborador.Verificar a label Código da Planta

E verificar a label Descrição da Planta
  resource_consrelmovimentocolaborador.Verificar a label Descrição da Planta

E verificar a label Código do Codin
  resource_consrelmovimentocolaborador.Verificar a label Código do Codin

E verificar a label Descrição do Codin
  resource_consrelmovimentocolaborador.Verificar a label Descrição do Codin

E verificar a label Tipo de Acesso
  resource_consrelmovimentocolaborador.Verificar a label Tipo de Acesso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
