*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consreldefinicoesdeacessoservidores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Definições de Acesso Colaboradores
${APPNAME}     consreldefinicoesdeacessoservidores
${OBJETIVO}    Verificar todos os campos na tela Definições de Acesso Colaboradores.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições de Acesso Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Definições de Acesso Colaboradores", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Definições de Acesso Colaboradores
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Código Colaborador
  E verificar a label Colaborador
  E verificar a label Crachá
  E verificar a label Empresa Terceira
  E verificar a label Filial
  E verificar a label Local
  E verificar a label Escala
  E verificar a label Anti Dupla
  E verificar a label Int. Almoço 
  E verificar a label Tempo Almoço
  E verificar a label Bloqueia por Falta
  E verificar a label Faixa Horária
  E verificar a label Cred.Acesso Refeitório
  E verificar a label Grupo de Acesso
  E verificar a label Utiliza Controle Biométrico
  E verificar a label Aut.Agenda
  E verificar a label Aut.Saída
  E verificar a label Aut.Hora Extra
  E verificar a label Verifica Afastamento
  E verificar a label Registra Ponto
  E verificar a label Grupo de Rep
  E verificar a label Perm. Acesso Visitante
  E verificar a label Perm. Acesso
  E verificar a label Perm. Acesso Feriados
  E verificar a label Perm. Acesso Sábados
  E verificar a label Perm. Acesso Domingos
  E verificar a label Desbloqueio de Crachá
  E verificar a label Receber Visitas
  E verificar a label Tipo de Terceiro
  E verificar a label Tipo de Contrato
  E verificar a label Cpf
  E verificar a label Número do Contrato
  E verificar a label Data Inicial
  E verificar a label Data Final
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

Ao digitar a descrição: "Definições de Acesso Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Definições de Acesso Colaboradores

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Definições de Acesso Colaboradores
  resource_consreldefinicoesdeacessoservidores.Acessar Tela Definições de Acesso Colaboradores

E verificar a label Tipo Colaborador
  resource_consreldefinicoesdeacessoservidores.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_consreldefinicoesdeacessoservidores.Verificar a label Matrícula

E verificar a label Código Colaborador
  resource_consreldefinicoesdeacessoservidores.Verificar a label Código Colaborador

E verificar a label Colaborador
  resource_consreldefinicoesdeacessoservidores.Verificar a label Colaborador

E verificar a label Crachá
  resource_consreldefinicoesdeacessoservidores.Verificar a label Crachá

E verificar a label Empresa Terceira
  resource_consreldefinicoesdeacessoservidores.Verificar a label Empresa Terceira

E verificar a label Filial
  resource_consreldefinicoesdeacessoservidores.Verificar a label Filial

E verificar a label Local
  resource_consreldefinicoesdeacessoservidores.Verificar a label Local

E verificar a label Escala
  resource_consreldefinicoesdeacessoservidores.Verificar a label Escala

E verificar a label Anti Dupla
  resource_consreldefinicoesdeacessoservidores.Verificar a label Anti Dupla

E verificar a label Int. Almoço 
  resource_consreldefinicoesdeacessoservidores.Verificar a label Int. Almoço 

E verificar a label Tempo Almoço
  resource_consreldefinicoesdeacessoservidores.Verificar a label Tempo Almoço

E verificar a label Bloqueia por Falta
  resource_consreldefinicoesdeacessoservidores.Verificar a label Bloqueia por Falta

E verificar a label Faixa Horária
  resource_consreldefinicoesdeacessoservidores.Verificar a label Faixa Horária

E verificar a label Cred.Acesso Refeitório
  resource_consreldefinicoesdeacessoservidores.Verificar a label Cred.Acesso Refeitório

E verificar a label Grupo de Acesso
  resource_consreldefinicoesdeacessoservidores.Verificar a label Grupo de Acesso

E verificar a label Utiliza Controle Biométrico
  resource_consreldefinicoesdeacessoservidores.Verificar a label Utiliza Controle Biométrico

E verificar a label Aut.Agenda
  resource_consreldefinicoesdeacessoservidores.Verificar a label Aut.Agenda

E verificar a label Aut.Saída
  resource_consreldefinicoesdeacessoservidores.Verificar a label Aut.Saida

E verificar a label Aut.Hora Extra
  resource_consreldefinicoesdeacessoservidores.Verificar a label Aut.Hora Extra

E verificar a label Verifica Afastamento
  resource_consreldefinicoesdeacessoservidores.Verificar a label Verifica Afastamento

E verificar a label Registra Ponto
  resource_consreldefinicoesdeacessoservidores.Verificar a label Registra Ponto

E verificar a label Grupo de Rep
  resource_consreldefinicoesdeacessoservidores.Verificar a label Grupo de Rep

E verificar a label Perm. Acesso Visitante
  resource_consreldefinicoesdeacessoservidores.Verificar a label Perm. Acesso Visitante

E verificar a label Perm. Acesso
  resource_consreldefinicoesdeacessoservidores.Verificar a label Perm. Acesso

E verificar a label Perm. Acesso Feriados
  resource_consreldefinicoesdeacessoservidores.Verificar a label Perm. Acesso Feriados

E verificar a label Perm. Acesso Sábados
  resource_consreldefinicoesdeacessoservidores.Verificar a label Perm. Acesso Sábados

E verificar a label Perm. Acesso Domingos
  resource_consreldefinicoesdeacessoservidores.Verificar a label Perm. Acesso Domingos

E verificar a label Desbloqueio de Crachá
  resource_consreldefinicoesdeacessoservidores.Verificar a label Desbloqueio de Crachá

E verificar a label Receber Visitas
  resource_consreldefinicoesdeacessoservidores.Verificar a label Receber Visitas

E verificar a label Tipo de Terceiro
  resource_consreldefinicoesdeacessoservidores.Verificar a label Tipo de Terceiro

E verificar a label Tipo de Contrato
  resource_consreldefinicoesdeacessoservidores.Verificar a label Tipo de Contrato

E verificar a label Cpf
  resource_consreldefinicoesdeacessoservidores.Verificar a label Cpf

E verificar a label Número do Contrato
  resource_consreldefinicoesdeacessoservidores.Verificar a label Número do Contrato

E verificar a label Data Inicial
  resource_consreldefinicoesdeacessoservidores.Verificar a label Data Inicial

E verificar a label Data Final
  resource_consreldefinicoesdeacessoservidores.Verificar a label Data Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
