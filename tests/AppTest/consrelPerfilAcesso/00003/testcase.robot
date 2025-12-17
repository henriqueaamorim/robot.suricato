*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelPerfilAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Perfil de Acesso Colaboradores - Filtro
${APPNAME}     consrelPerfilAcesso
${OBJETIVO}    Verificar todos os campos na tela Relatório de Perfil de Acesso Colaboradores - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Perfil de Acesso Colaboradores - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Perfil de Acesso Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo Colaborador
  E verificar o campo Matrícula
  E verificar o campo Anti Dupla
  E verificar o campo Verifica Afastamento
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

Ao digitar a descrição: "Relatório de Perfil de Acesso Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Perfil de Acesso Colaboradores

Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores - Filtro
  resource_consrelPerfilAcesso.Acessar Tela Relatório de Perfil de Acesso Colaboradores - Filtro

E verificar a label Pesquisa
  resource_consrelPerfilAcesso.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelPerfilAcesso.Verificar o campo Empresa

E verificar o campo Tipo Colaborador
  resource_consrelPerfilAcesso.Verificar o campo Tipo Colaborador

E verificar o campo Matrícula
  resource_consrelPerfilAcesso.Verificar o campo Matrícula

E verificar o campo Anti Dupla
  resource_consrelPerfilAcesso.Verificar o campo Anti Dupla

E verificar o campo Verifica Afastamento
  resource_consrelPerfilAcesso.Verificar o campo Verifica Afastamento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
