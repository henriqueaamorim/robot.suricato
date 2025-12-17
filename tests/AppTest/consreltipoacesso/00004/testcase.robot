*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consreltipoacesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Tipo de Acesso
${APPNAME}     consreltipoacesso
${OBJETIVO}    Verificar todos os campos na tela Tipo de Acesso.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Tipo de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Tipo de Acesso", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Tipo de Acesso
  E verificar a label Código do Tipo de Acesso
  E verificar a label Descrição do Tipo de Acesso
  E verificar a label Título Reduzido Tipo de Acesso
  E verificar a label Ação do Tipo de Acesso
  E verificar a label Cons.Tp.Acesso Apuração Ponto
  E verificar a label Cod.Função Gerada no Acesso
  E verificar a label Exibir Tipo de Acesso
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

Ao digitar a descrição: "Tipo de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Tipo de Acesso

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Tipo de Acesso
  resource_consreltipoacesso.Acessar Tela Tipo de Acesso

E verificar a label Código do Tipo de Acesso
  resource_consreltipoacesso.Verificar a label Código do Tipo de Acesso

E verificar a label Descrição do Tipo de Acesso
  resource_consreltipoacesso.Verificar a label Descrição do Tipo de Acesso

E verificar a label Título Reduzido Tipo de Acesso
  resource_consreltipoacesso.Verificar a label Título Reduzido Tipo de Acesso

E verificar a label Ação do Tipo de Acesso
  resource_consreltipoacesso.Verificar a label Ação do Tipo de Acesso

E verificar a label Cons.Tp.Acesso Apuração Ponto
  resource_consreltipoacesso.Verificar a label Cons.Tp.Acesso Apuração Ponto

E verificar a label Cod.Função Gerada no Acesso
  resource_consreltipoacesso.Verificar a label Cod.Função Gerada no Acesso

E verificar a label Exibir Tipo de Acesso
  resource_consreltipoacesso.Verificar a label Exibir Tipo de Acesso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
