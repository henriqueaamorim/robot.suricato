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

${SCREENNAME}  Relatório de Perfil de Acesso Colaboradores
${APPNAME}     consrelPerfilAcesso
${OBJETIVO}    Verificar todos os campos na tela Relatório de Perfil de Acesso Colaboradores.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Perfil de Acesso Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Perfil de Acesso Colaboradores", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores
  E verificar a label Empresa
  E verificar a segunda label Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Colaborador
  E verificar a label Anti Dupla
  E verificar a label Faixa Horária
  E verificar a label Verifica Afastamento
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório de Perfil de Acesso Colaboradores
  resource_consrelPerfilAcesso.Acessar Tela Relatório de Perfil de Acesso Colaboradores

E verificar a label Empresa
  resource_consrelPerfilAcesso.Verificar a label Empresa

E verificar a segunda label Empresa
  resource_consrelPerfilAcesso.Verificar a segunda label Empresa

E verificar a label Tipo Colaborador
  resource_consrelPerfilAcesso.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_consrelPerfilAcesso.Verificar a label Matrícula

E verificar a label Colaborador
  resource_consrelPerfilAcesso.Verificar a label Colaborador

E verificar a label Anti Dupla
  resource_consrelPerfilAcesso.Verificar a label Anti Dupla

E verificar a label Faixa Horária
  resource_consrelPerfilAcesso.Verificar a label Faixa Horária

E verificar a label Verifica Afastamento
  resource_consrelPerfilAcesso.Verificar a label Verifica Afastamento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
