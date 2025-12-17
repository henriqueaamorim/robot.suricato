*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesGerais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
 
${SCREENNAME}  Matrícula Automática
${APPNAME}     ctrConfiguracoesGerais
${OBJETIVO}    Verificar todos os campos na tela Matrícula Automática.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Matrícula Automática
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  Então devo visualizar a tela: Matrícula Automática
  E verificar a label Parcero
  E verificar o campo Auto Incremento na área de Parceiro
  E verificar o campo Permissão - Dia da Semana na área de Parceiro
  E verificar o campo Permissão - Sábado na área de Parceiro
  E verificar o campo Permissão - Domingo na área de Parceiro
  E verificar o campo Permissão - Feriado na área de Parceiro
  E verificar o campo Permissão - Visitante na área de Parceiro
  E verificar a label Terceiro
  E verificar o campo Auto Incremento na área de Terceiro
  E verificar o campo Permissão - Dia da Semana na área de Terceiro
  E verificar o campo Permissão - Sábado na área de Terceiro
  E verificar o campo Permissão - Domingo na área de Terceiro
  E verificar o campo Permissão - Feriado na área de Terceiro
  E verificar o campo Permissão - Visitante na área de Terceiro
  E verificar a label Funcionário
  E verificar o campo Auto Incremento na área de Funcionário
  E verificar o campo Permissão - Dia da Semana na área de Funcionário
  E verificar o campo Permissão - Sábado na área de Funcionário
  E verificar o campo Permissão - Domingo na área de Funcionário
  E verificar o campo Permissão - Feriado na área de Funcionário
  E verificar o campo Permissão - Visitante na área de Funcionário
  E verificar a label Gravação Automatica Provisorio
  E verificar o campo Config. Baixa Automática Provisórios
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

Então devo visualizar a tela: Matrícula Automática
  resource_ctrConfiguracoesGerais.Acessar Tela Matrícula Automática

E verificar a label Parcero
  resource_ctrConfiguracoesGerais.Verificar a label Parcero

E verificar o campo Auto Incremento na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Auto Incremento na área de Parceiro

E verificar o campo Permissão - Dia da Semana na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Dia da Semana na área de Parceiro

E verificar o campo Permissão - Sábado na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Sábado na área de Parceiro

E verificar o campo Permissão - Domingo na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Domingo na área de Parceiro

E verificar o campo Permissão - Feriado na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Feriado na área de Parceiro

E verificar o campo Permissão - Visitante na área de Parceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Visitante na área de Parceiro

E verificar a label Terceiro
  resource_ctrConfiguracoesGerais.Verificar a label Terceiro

E verificar o campo Auto Incremento na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Auto Incremento na área de Terceiro

E verificar o campo Permissão - Dia da Semana na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Dia da Semana na área de Terceiro

E verificar o campo Permissão - Sábado na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Sábado na área de Terceiro

E verificar o campo Permissão - Domingo na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Domingo na área de Terceiro

E verificar o campo Permissão - Feriado na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Feriado na área de Terceiro

E verificar o campo Permissão - Visitante na área de Terceiro
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Visitante na área de Terceiro

E verificar a label Funcionário
  resource_ctrConfiguracoesGerais.Verificar a label Funcionário

E verificar o campo Auto Incremento na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Auto Incremento na área de Funcionário

E verificar o campo Permissão - Dia da Semana na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Dia da Semana na área de Funcionário

E verificar o campo Permissão - Sábado na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Sábado na área de Funcionário

E verificar o campo Permissão - Domingo na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Domingo na área de Funcionário

E verificar o campo Permissão - Feriado na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Feriado na área de Funcionário

E verificar o campo Permissão - Visitante na área de Funcionário
  resource_ctrConfiguracoesGerais.Verificar o campo Permissão - Visitante na área de Funcionário

E verificar a label Gravação Automatica Provisorio
  resource_ctrConfiguracoesGerais.Verificar a label Gravação Automatica Provisorio

E verificar o campo Config. Baixa Automática Provisórios
  resource_ctrConfiguracoesGerais.Verificar o campo Config. Baixa Automática Provisórios

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
