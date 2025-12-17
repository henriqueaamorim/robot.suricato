*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cons_relatoriAreaRestrita.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Acessos às Áreas Restritas - Filtro
${APPNAME}     cons_relatoriAreaRestrita
${OBJETIVO}    Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso a Área Restrita", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Acessos às Áreas Restritas - Filtro
  E verificar o campo Tipo de Pessoa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Data do Acesso
  E verificar o campo Hora do Acesso
  E verificar o campo Código de Acesso
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Direção do Acesso
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

Ao digitar a descrição: "Acesso a Área Restrita", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso a Área Restrita

Então devo visualizar a tela: Relatório de Acessos às Áreas Restritas - Filtro
  resource_cons_relatoriAreaRestrita.Acessar Tela Relatório de Acessos às Áreas Restritas - Filtro

E verificar o campo Tipo de Pessoa
  resource_cons_relatoriAreaRestrita.Verificar o campo Tipo de Pessoa

E verificar o campo Tipo do Colaborador
  resource_cons_relatoriAreaRestrita.Verificar o campo Tipo do Colaborador

E verificar o campo Data do Acesso
  resource_cons_relatoriAreaRestrita.Verificar o campo Data do Acesso

E verificar o campo Hora do Acesso
  resource_cons_relatoriAreaRestrita.Verificar o campo Hora do Acesso

E verificar o campo Código de Acesso
  resource_cons_relatoriAreaRestrita.Verificar o campo Código de Acesso

E verificar o campo Planta
  resource_cons_relatoriAreaRestrita.Verificar o campo Planta

E verificar o campo Codin
  resource_cons_relatoriAreaRestrita.Verificar o campo Codin

E verificar o campo Direção do Acesso
  resource_cons_relatoriAreaRestrita.Verificar o campo Direção do Acesso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
