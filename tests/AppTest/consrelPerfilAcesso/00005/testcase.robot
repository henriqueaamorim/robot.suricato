*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelPerfilAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher os campos da tela Relatório de Perfil de Acesso Colaboradores - Filtro.

*** Test Cases ***

Testcase: Preencher os campos da tela Relatório de Perfil de Acesso Colaboradores - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Perfil de Acesso Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores - Filtro
  E selecionar uma opção no campo Empresa "3 - HOTEL PORTAL DO SOL LTDA"
  E selecionar uma opção no campo Tipo Colaborador "Empregado"
  E preencher o campo Matrícula "1"
  E selecionar uma opção no campo Anti Dupla "Não"
  E selecionar uma opção no campo Verifica Afastamento "Não"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Relatório de Perfil de Acesso Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Perfil de Acesso Colaboradores

Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores - Filtro
  resource_consrelPerfilAcesso.Acessar Tela Relatório de Perfil de Acesso Colaboradores - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consrelPerfilAcesso.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_consrelPerfilAcesso.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consrelPerfilAcesso.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Anti Dupla "${ANTI_DUPLA}"
  resource_consrelPerfilAcesso.Selecionar uma opção no campo Anti Dupla "${ANTI_DUPLA}"

E selecionar uma opção no campo Verifica Afastamento "${VERIFICA_AFASTAMENTO}"
  resource_consrelPerfilAcesso.Selecionar uma opção no campo Verifica Afastamento "${VERIFICA_AFASTAMENTO}"
