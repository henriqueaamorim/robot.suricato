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

${SCREENNAME}  Movimento de Colaboradores - Filtro
${APPNAME}     consrelmovimentocolaborador
${OBJETIVO}    Verificar todos os campos na tela Movimento de Colaboradores - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Movimento de Colaboradores - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Movimento de Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Movimento de Colaboradores - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo de Colaborador
  E verificar o campo Código da Planta
  E verificar o campo Código do Codin
  E verificar o campo Tipo do Acesso
  E verificar o campo Data
  E verificar o campo Hora
  E verificar o campo Matrícula
  E verificar o campo Exibir Usuário:
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

Então devo visualizar a tela: Movimento de Colaboradores - Filtro
  resource_consrelmovimentocolaborador.Acessar Tela Movimento de Colaboradores - Filtro

E verificar a label Pesquisa
  resource_consrelmovimentocolaborador.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelmovimentocolaborador.Verificar o campo Empresa

E verificar o campo Tipo de Colaborador
  resource_consrelmovimentocolaborador.Verificar o campo Tipo de Colaborador

E verificar o campo Código da Planta
  resource_consrelmovimentocolaborador.Verificar o campo Código da Planta

E verificar o campo Código do Codin
  resource_consrelmovimentocolaborador.Verificar o campo Código do Codin

E verificar o campo Tipo do Acesso
  resource_consrelmovimentocolaborador.Verificar o campo Tipo do Acesso

E verificar o campo Data
  resource_consrelmovimentocolaborador.Verificar o campo Data

E verificar o campo Hora
  resource_consrelmovimentocolaborador.Verificar o campo Hora

E verificar o campo Matrícula
  resource_consrelmovimentocolaborador.Verificar o campo Matrícula

E verificar o campo Exibir Usuário:
  resource_consrelmovimentocolaborador.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
