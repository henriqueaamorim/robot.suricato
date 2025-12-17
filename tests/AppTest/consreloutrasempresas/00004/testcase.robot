*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consreloutrasempresas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Empresas Terceiras
${APPNAME}     consreloutrasempresas
${OBJETIVO}    Verificar todos os campos na tela Empresas Terceiras.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Empresas Terceiras
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Empresa Terceira", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Empresas Terceiras
  E verificar a label Endereço:
  E verificar a label Nome Fantasia:
  E verificar a label Bairro:
  E verificar a label Emp. Crachá:
  E verificar a label CEP:
  E verificar a label Emp. Crachá Prov.
  E verificar a label Complemento:
  E verificar a label Cidade:
  E verificar a label Fone:
  E verificar a label Via Crachá Prov.
  E verificar a label Fax:
  E verificar a label Estado:
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

Ao digitar a descrição: "Empresa Terceira", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Empresa Terceira

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Empresas Terceiras
  resource_consreloutrasempresas.Acessar Tela Empresas Terceiras

E verificar a label Endereço:
  resource_consreloutrasempresas.Verificar a label Endereço:

E verificar a label Nome Fantasia:
  resource_consreloutrasempresas.Verificar a label Nome Fantasia:

E verificar a label Bairro:
  resource_consreloutrasempresas.Verificar a label Bairro:

E verificar a label Emp. Crachá:
  resource_consreloutrasempresas.Verificar a label Emp. Crachá:

E verificar a label CEP:
  resource_consreloutrasempresas.Verificar a label CEP:

E verificar a label Emp. Crachá Prov.
  resource_consreloutrasempresas.Verificar a label Emp. Crachá Prov.

E verificar a label Complemento:
  resource_consreloutrasempresas.Verificar a label Complemento:

E verificar a label Cidade:
  resource_consreloutrasempresas.Verificar a label Cidade:

E verificar a label Fone:
  resource_consreloutrasempresas.Verificar a label Fone:

E verificar a label Via Crachá Prov.
  resource_consreloutrasempresas.Verificar a label Via Crachá Prov.

E verificar a label Fax:
  resource_consreloutrasempresas.Verificar a label Fax:

E verificar a label Estado:
  resource_consreloutrasempresas.Verificar a label Estado:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
