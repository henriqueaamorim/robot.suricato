*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Configurações Integração TOTVS.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Configurações Integração TOTVS
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  Então devo visualizar a tela: Configurações Integração TOTVS
  E selecionar a opção Integração TOTVS
  E selecionar uma opção no campo Sistema "RM"
  E preencher o campo Cód. Empresa Padrão "2"
  E preencher o campo Cód. Organograma Local "3"
  E preencher o campo Local Organograma "3"
  E preencher o campo Grupo de Acesso Padrão "5"
  E selecionar uma opção no campo Turno Reduzido "Sim"
  E selecionar uma opção no campo Utiliza Tolerância "Sim"
  E selecionar uma opção no campo Tipo de Tolerância "Abrangente"
  E preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "12"
  E preencher o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos) "20"
  E preencher o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos) "30"
  E preencher o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos) "40"
  E selecionar uma opção no campo Tipo de Controle de Refeição "Sim"
  E selecionar uma opção no campo Tolerância Refeição (Saida) "Sim"
  E preencher o campo Tolerância Refeição (Valor) "1"
  E selecionar uma opção no campo Faixa de Acesso Refeitório Mandatorio "Global" 
  E selecionar uma opção no campo Chave Externa "Total"
  E selecionar uma opção no campo Controlar Chave Externa Refeitório "Sim"
  E preencher o campo Tipo de Situação Trabalhista Padrão "98"
  E selecionar uma opção no campo Faixa de Acesso Mandatório "Global"
  E selecionar uma opção no campo Configuração Padrão de Acesso Refeição e Biometria "Sim"
  E selecionar uma opção no campo Tag do Início da Escala "Colaborador->Data Inicio"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

Então devo visualizar a tela: Configurações Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS

E selecionar a opção Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Selecionar a opção Integração TOTVS 

E selecionar uma opção no campo Sistema "${SISTEMA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Sistema "${SISTEMA}"

E preencher o campo Cód. Empresa Padrão "${CÓD._EMPRESA_PADRÃO}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Cód. Empresa Padrão "${CÓD._EMPRESA_PADRÃO}"

E preencher o campo Cód. Organograma Local "${CÓD._ORGANOGRAMA_LOCAL}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Cód. Organograma Local "${CÓD._ORGANOGRAMA_LOCAL}"

E preencher o campo Local Organograma "${LOCAL_ORGANOGRAMA}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Local Organograma "${LOCAL_ORGANOGRAMA}"

E preencher o campo Grupo de Acesso Padrão "${GRUPO_DE_ACESSO_PADRÃO}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Grupo de Acesso Padrão "${GRUPO_DE_ACESSO_PADRÃO}"

E selecionar uma opção no campo Turno Reduzido "${TURNO_REDUZIDO}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Turno Reduzido "${TURNO_REDUZIDO}"

E selecionar uma opção no campo Utiliza Tolerância "${UTILIZA_TOLERÂNCIA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Utiliza Tolerância "${UTILIZA_TOLERÂNCIA}"

E selecionar uma opção no campo Tipo de Tolerância "${TIPO_DE_TOLERÂNCIA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Tipo de Tolerância "${TIPO_DE_TOLERÂNCIA}"

E preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"

E preencher o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"

E preencher o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"

E preencher o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"

E selecionar uma opção no campo Tipo de Controle de Refeição "${TIPO_DE_CONTROLE_DE_REFEIÇÃO}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Tipo de Controle de Refeição "${TIPO_DE_CONTROLE_DE_REFEIÇÃO}"

E selecionar uma opção no campo Tolerância Refeição (Saida) "${TOLERÂNCIA_REFEIÇÃO_(SAIDA)}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Tolerância Refeição (Saida) "${TOLERÂNCIA_REFEIÇÃO_(SAIDA)}"

E preencher o campo Tolerância Refeição (Valor) "${TOLERÂNCIA_REFEIÇÃO_(VALOR)}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tolerância Refeição (Valor) "${TOLERÂNCIA_REFEIÇÃO_(VALOR)}"

E selecionar uma opção no campo Faixa de Acesso Refeitório Mandatorio "${FAIXA_DE_ACESSO_REFEITÓRIO_MANDATORIO}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Faixa de Acesso Refeitório Mandatorio "${FAIXA_DE_ACESSO_REFEITÓRIO_MANDATORIO}"

E selecionar uma opção no campo Chave Externa "${CHAVE_EXTERNA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Chave Externa "${CHAVE_EXTERNA}"

E selecionar uma opção no campo Controlar Chave Externa Refeitório "${CONTROLAR_CHAVE_EXTERNA_REFEITÓRIO}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Controlar Chave Externa Refeitório "${CONTROLAR_CHAVE_EXTERNA_REFEITÓRIO}"

E preencher o campo Tipo de Situação Trabalhista Padrão "${TIPO_DE_SITUAÇÃO_TRABALHISTA_PADRÃO}"
  resource_ctrConfiguracoesTOTVS.Preencher o campo Tipo de Situação Trabalhista Padrão "${TIPO_DE_SITUAÇÃO_TRABALHISTA_PADRÃO}"

E selecionar uma opção no campo Faixa de Acesso Mandatório "${FAIXA_DE_ACESSO_MANDATÓRIO}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Faixa de Acesso Mandatório "${FAIXA_DE_ACESSO_MANDATÓRIO}"

E selecionar uma opção no campo Configuração Padrão de Acesso Refeição e Biometria "${CONFIGURAÇÃO_PADRÃO_DE_ACESSO_REFEIÇÃO_E_BIOMETRIA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Configuração Padrão de Acesso Refeição e Biometria "${CONFIGURAÇÃO_PADRÃO_DE_ACESSO_REFEIÇÃO_E_BIOMETRIA}"

E selecionar uma opção no campo Tag do Início da Escala "${TAG_DO_INÍCIO_DA_ESCALA}"
  resource_ctrConfiguracoesTOTVS.Selecionar uma opção no campo Tag do Início da Escala "${TAG_DO_INÍCIO_DA_ESCALA}"
