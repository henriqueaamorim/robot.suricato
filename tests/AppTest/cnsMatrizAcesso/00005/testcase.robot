*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Matriz Acesso - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Matriz de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Matriz Acesso - Filtro
  E preencher o campo Cód. Matriz "ok"
  E preencher o campo Nome da Matriz "ok"
  E preencher o campo Nível de Prioridade "ok" 
  E preencher o campo Data Início 
  E preencher o campo Data Fim  
  E selecionar uma opção no campo Tipo de Colaborador "Terceiro"
  E selecionar uma opção no campo Empresa "empresa 1"
  E selecionar uma opção no campo Filial "5_DIGITOS_TESTE"
  E selecionar uma opção no campo Centro de Custo "Teste CC1"
  E selecionar uma opção no campo Local Organograma "251-A"
  E selecionar uma opção no campo Cargo "Cargo"
  E selecionar uma opção no campo Turno "1 Turno Teste"
  E selecionar uma opção no campo Escala "Descrição"
  E selecionar uma opção no campo Grupo Feriados "teste"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Matriz de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Matriz de Acesso de Colaborador

Então devo visualizar a tela: Consulta Matriz Acesso - Filtro
  resource_cnsMatrizAcesso.Acessar Tela Consulta Matriz Acesso - Filtro

E preencher o campo Cód. Matriz "${CÓD._MATRIZ}"
  resource_cnsMatrizAcesso.Preencher o campo Cód. Matriz "${CÓD._MATRIZ}"

E preencher o campo Nome da Matriz "${NOME_DA_MATRIZ}"
  resource_cnsMatrizAcesso.Preencher o campo Nome da Matriz "${NOME_DA_MATRIZ}"

E preencher o campo Nível de Prioridade "${NÍVEL_DE_PRIORIDADE}"
  resource_cnsMatrizAcesso.Preencher o campo Nível de Prioridade "${NÍVEL_DE_PRIORIDADE}"

E preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  resource_cnsMatrizAcesso.Preencher o campo Data Início "${DIA}/${MES}/${ANO}"

E preencher o campo Data Fim"${DIA}/${MES}/${ANO}"
  resource_cnsMatrizAcesso.Preencher o campo Data Fim"${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Filial "${FILIAL}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Filial "${FILIAL}"

E selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"

E selecionar uma opção no campo Local Organograma "${LOCAL_ORGANOGRAMA}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Local Organograma "${LOCAL_ORGANOGRAMA}"

E selecionar uma opção no campo Cargo "${CARGO}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Cargo "${CARGO}"

E selecionar uma opção no campo Turno "${TURNO}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Turno "${TURNO}"

E selecionar uma opção no campo Escala "${ESCALA}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Escala "${ESCALA}"

E selecionar uma opção no campo Grupo Feriados "${GRUPO_FERIADOS}"
  resource_cnsMatrizAcesso.Selecionar uma opção no campo Grupo Feriados "${GRUPO_FERIADOS}"
