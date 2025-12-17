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

${SCREENNAME}  Acesso de Veículos de Colaboradores
${APPNAME}     consAcessoVeiculoscracha
${OBJETIVO}    Verificar todos os campos na tela Acesso de Veículos de Colaboradores.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Acesso de Veículos de Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso de Veiculo", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Acesso de Veículos de Colaboradores
  E verificar a label Empresa
  E verificar a label Crachá
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Empresa Terceira
  E verificar a label Marca
  E verificar a label Modelo
  E verificar a label Placa
  E verificar a label UF Placa
  E verificar a label Crachá do Veículo
  E verificar a label Data de Acesso
  E verificar a label Hora de Acesso
  E verificar a label Tipo do Acesso
  E verificar a label Direção
  E verificar a label Planta
  E verificar a segunda label Planta
  E verificar a label Codin
  E verificar a label Descrição
  E verificar a label Código da Função
  E verificar a label Qtde.
  E verificar a label Uso da Marcação
  E verificar a label Presença
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Acesso de Veículos de Colaboradores
  resource_consAcessoVeiculoscracha.Acessar Tela Acesso de Veículos de Colaboradores

E verificar a label Empresa
  resource_consAcessoVeiculoscracha.Verificar a label Empresa

E verificar a label Crachá
  resource_consAcessoVeiculoscracha.Verificar a label Crachá

E verificar a label Tipo Colaborador
  resource_consAcessoVeiculoscracha.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_consAcessoVeiculoscracha.Verificar a label Matrícula

E verificar a label Nome
  resource_consAcessoVeiculoscracha.Verificar a label Nome

E verificar a label Empresa Terceira
  resource_consAcessoVeiculoscracha.Verificar a label Empresa Terceira

E verificar a label Marca
  resource_consAcessoVeiculoscracha.Verificar a label Marca

E verificar a label Modelo
  resource_consAcessoVeiculoscracha.Verificar a label Modelo

E verificar a label Placa
  resource_consAcessoVeiculoscracha.Verificar a label Placa

E verificar a label UF Placa
  resource_consAcessoVeiculoscracha.Verificar a label UF Placa

E verificar a label Crachá do Veículo
  resource_consAcessoVeiculoscracha.Verificar a label Crachá do Veículo

E verificar a label Data de Acesso
  resource_consAcessoVeiculoscracha.Verificar a label Data de Acesso

E verificar a label Hora de Acesso
  resource_consAcessoVeiculoscracha.Verificar a label Hora de Acesso

E verificar a label Tipo do Acesso
  resource_consAcessoVeiculoscracha.Verificar a label Tipo do Acesso

E verificar a label Direção
  resource_consAcessoVeiculoscracha.Verificar a label Direção

E verificar a label Planta
  resource_consAcessoVeiculoscracha.Verificar a label Planta

E verificar a segunda label Planta
  resource_consAcessoVeiculoscracha.Verificar a segunda label Planta

E verificar a label Codin
  resource_consAcessoVeiculoscracha.Verificar a label Codin

E verificar a label Descrição
  resource_consAcessoVeiculoscracha.Verificar a label Descrição

E verificar a label Código da Função
  resource_consAcessoVeiculoscracha.Verificar a label Código da Função

E verificar a label Qtde.
  resource_consAcessoVeiculoscracha.Verificar a label Qtde.

E verificar a label Uso da Marcação
  resource_consAcessoVeiculoscracha.Verificar a label Uso da Marcação

E verificar a label Presença
  resource_consAcessoVeiculoscracha.Verificar a label Presença

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
