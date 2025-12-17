*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consAcessoVeiculoscracha.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Acesso de Veículos de Colaboradores - Filtro
${APPNAME}     consAcessoVeiculoscracha
${OBJETIVO}    Verificar todos os campos na tela Acesso de Veículos de Colaboradores - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Acesso de Veículos de Colaboradores - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Veiculo", e clicar em Pesquisar
  Então devo visualizar a tela: Acesso de Veículos de Colaboradores - Filtro
  E verificar o campo Empresa
  E verificar o campo Tipo Colaborador
  E verificar o campo Empresa Terceira
  E verificar o campo Matrícula
  E verificar o campo Crachá
  E verificar o campo Nome
  E verificar o campo Tipo do Veiculo
  E verificar o campo Cód. Veículo
  E verificar o campo Placa
  E verificar o campo Crachá do Veículo
  E verificar o campo Data de Acesso
  E verificar o campo Hora de Acesso
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Presença
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

Ao digitar a descrição: "Acesso de Veiculo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso de Veiculo

Então devo visualizar a tela: Acesso de Veículos de Colaboradores - Filtro
  resource_consAcessoVeiculoscracha.Acessar Tela Acesso de Veículos de Colaboradores - Filtro

E verificar o campo Empresa
  resource_consAcessoVeiculoscracha.Verificar o campo Empresa

E verificar o campo Tipo Colaborador
  resource_consAcessoVeiculoscracha.Verificar o campo Tipo Colaborador

E verificar o campo Empresa Terceira
  resource_consAcessoVeiculoscracha.Verificar o campo Empresa Terceira

E verificar o campo Matrícula
  resource_consAcessoVeiculoscracha.Verificar o campo Matrícula

E verificar o campo Crachá
  resource_consAcessoVeiculoscracha.Verificar o campo Crachá

E verificar o campo Nome
  resource_consAcessoVeiculoscracha.Verificar o campo Nome

E verificar o campo Tipo do Veiculo
  resource_consAcessoVeiculoscracha.Verificar o campo Tipo do Veiculo

E verificar o campo Cód. Veículo
  resource_consAcessoVeiculoscracha.Verificar o campo Cód. Veículo

E verificar o campo Placa
  resource_consAcessoVeiculoscracha.Verificar o campo Placa

E verificar o campo Crachá do Veículo
  resource_consAcessoVeiculoscracha.Verificar o campo Crachá do Veículo

E verificar o campo Data de Acesso
  resource_consAcessoVeiculoscracha.Verificar o campo Data de Acesso

E verificar o campo Hora de Acesso
  resource_consAcessoVeiculoscracha.Verificar o campo Hora de Acesso

E verificar o campo Planta
  resource_consAcessoVeiculoscracha.Verificar o campo Planta

E verificar o campo Codin
  resource_consAcessoVeiculoscracha.Verificar o campo Codin

E verificar o campo Presença
  resource_consAcessoVeiculoscracha.Verificar o campo Presença

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
