*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelpermissaodeservidores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Valores de Entrada do Modelo
${APPNAME}     consrelpermissaodeservidores
${OBJETIVO}    Verificar todos os campos na tela Valores de Entrada do Modelo.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Valores de Entrada do Modelo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Grupo de Acesso de Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo Colaborador
  E verificar o campo Matrícula
  E verificar o campo Dias Normais
  E verificar o campo Grupo de Acesso Sábado
  E verificar o campo Grupo de Acesso Domingo
  E verificar o campo Grupo de Acesso Feriado
  E verificar o campo Grupo de Acesso Visitante
  E verificar o campo Exibir Usuário:
  E verificar o campo Estrutura
  E verificar o campo Local
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

Ao digitar a descrição: "Grupo de Acesso de Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Grupo de Acesso de Colaboradores

Então devo visualizar a tela: Valores de Entrada do Modelo
  resource_consrelpermissaodeservidores.Acessar Tela Valores de Entrada do Modelo

E verificar a label Pesquisa
  resource_consrelpermissaodeservidores.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelpermissaodeservidores.Verificar o campo Empresa

E verificar o campo Tipo Colaborador
  resource_consrelpermissaodeservidores.Verificar o campo Tipo Colaborador

E verificar o campo Matrícula
  resource_consrelpermissaodeservidores.Verificar o campo Matrícula

E verificar o campo Dias Normais
  resource_consrelpermissaodeservidores.Verificar o campo Dias Normais

E verificar o campo Grupo de Acesso Sábado
  resource_consrelpermissaodeservidores.Verificar o campo Grupo de Acesso Sábado

E verificar o campo Grupo de Acesso Domingo
  resource_consrelpermissaodeservidores.Verificar o campo Grupo de Acesso Domingo

E verificar o campo Grupo de Acesso Feriado
  resource_consrelpermissaodeservidores.Verificar o campo Grupo de Acesso Feriado

E verificar o campo Grupo de Acesso Visitante
  resource_consrelpermissaodeservidores.Verificar o campo Grupo de Acesso Visitante

E verificar o campo Exibir Usuário:
  resource_consrelpermissaodeservidores.Verificar o campo Exibir Usuário:

E verificar o campo Estrutura
  resource_consrelpermissaodeservidores.Verificar o campo Estrutura

E verificar o campo Local
  resource_consrelpermissaodeservidores.Verificar o campo Local

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
