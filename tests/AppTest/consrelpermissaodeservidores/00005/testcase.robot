*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelpermissaodeservidores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher os campos da tela Valores de Entrada do Modelo.

*** Test Cases ***

Testcase: Preencher os campos da tela Valores de Entrada do Modelo
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Grupo de Acesso de Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E selecionar uma opção no campo Empresa "3 - HOTEL PORTAL DO SOL LTDA"
  E selecionar uma opção no campo Tipo Colaborador "1 - Empregado"
  E preencher o campo Matrícula "1"
  E selecionar uma opção no campo Dias Normais "1 - ACESSO"
  E selecionar uma opção no campo Grupo de Acesso Sábado "1 - ACESSO"
  E selecionar uma opção no campo Grupo de Acesso Domingo "1 - ACESSO"
  E selecionar uma opção no campo Grupo de Acesso Feriado "1 - ACESSO"
  E selecionar uma opção no campo Grupo de Acesso Visitante "1 - ACESSO"
  E selecionar uma opção no campo Exibir Usuário "Sim"
  E selecionar uma opção no campo Estrutura "Diretoria Administrativa"
  E selecionar uma opção no campo Local "Teste alter"

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

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consrelpermissaodeservidores.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Dias Normais "${DIAS_NORMAIS}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Dias Normais "${DIAS_NORMAIS}"

E selecionar uma opção no campo Grupo de Acesso Sábado "${GRUPO_DE_ACESSO_SÁBADO}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Grupo de Acesso Sábado "${GRUPO_DE_ACESSO_SÁBADO}"

E selecionar uma opção no campo Grupo de Acesso Domingo "${GRUPO_DE_ACESSO_DOMINGO}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Grupo de Acesso Domingo "${GRUPO_DE_ACESSO_DOMINGO}"

E selecionar uma opção no campo Grupo de Acesso Feriado "${GRUPO_DE_ACESSO_FERIADO}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Grupo de Acesso Feriado "${GRUPO_DE_ACESSO_FERIADO}"

E selecionar uma opção no campo Grupo de Acesso Visitante "${GRUPO_DE_ACESSO_VISITANTE}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Grupo de Acesso Visitante "${GRUPO_DE_ACESSO_VISITANTE}"

E selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"

E selecionar uma opção no campo Estrutura "${ESTRUTURA}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Estrutura "${ESTRUTURA}"

E selecionar uma opção no campo Local "${LOCAL}"
  resource_consrelpermissaodeservidores.Selecionar uma opção no campo Local "${LOCAL}"
