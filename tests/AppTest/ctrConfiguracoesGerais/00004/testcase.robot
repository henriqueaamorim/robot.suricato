*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesGerais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Matrícula Automática.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Matrícula Automática
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  Então devo visualizar a tela: Matrícula Automática
  E selecionar uma opção no campo Auto Incremento "Sim" da área de Parceiro
  E preencher o campo Permissão - Dia da Semana "2" da área de Parceiro
  E preencher o campo Permissão - Sábado "2" da área de Parceiro
  E preencher o campo Permissão - Domingo "2" da área de Parceiro
  E preencher o campo Permissão - Feriado "2" da área de Parceiro
  E preencher o campo Permissão - Visitante "2" da área de Parceiro
  E selecionar uma opção no campo Auto Incremento "Sim" da área de Terceiro
  E preencher o campo Permissão - Dia da Semana "2" da área de Terceiro
  E preencher o campo Permissão - Sábado "2" da área de Terceiro
  E preencher o campo Permissão - Domingo "2" da área de Terceiro
  E preencher o campo Permissão - Feriado "2" da área de Terceiro
  E preencher o campo Permissão - Visitante "2" da área de Terceiro
  E selecionar uma opção no campo Auto Incremento "Sim" da área de Funcionário
  E preencher o campo Permissão - Dia da Semana "2" da área de Funcionário
  E preencher o campo Permissão - Sábado "2" da área de Funcionário
  E preencher o campo Permissão - Domingo "2" da área de Funcionário
  E preencher o campo Permissão - Feriado "2" da área de Funcionário
  E preencher o campo Permissão - Visitante "2" da área de Funcionário
  E selecionar uma opção no campo Config. Baixa Automática Provisórios "Sim"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

Então devo visualizar a tela: Matrícula Automática
  resource_ctrConfiguracoesGerais.Acessar Tela Matrícula Automática

E selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Parceiro

E preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Parceiro

E preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Parceiro

E preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Parceiro

E preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Parceiro

E preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Parceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Parceiro

E selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Terceiro

E preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Terceiro

E preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Terceiro

E preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Terceiro

E preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Terceiro

E preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Terceiro
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Terceiro

E selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Funcionário

E preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Funcionário

E preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Funcionário

E preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Funcionário

E preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Funcionário

E preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Funcionário
  resource_ctrConfiguracoesGerais.Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Funcionário

E selecionar uma opção no campo Config. Baixa Automática Provisórios "${CONFIG_BAIXA_AUTOMÁTICA_PROVISÓRIOS}"
  resource_ctrConfiguracoesGerais.Selecionar uma opção no campo Config. Baixa Automática Provisórios "${CONFIG_BAIXA_AUTOMÁTICA_PROVISÓRIOS}"
