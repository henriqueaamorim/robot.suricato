*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrconsacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Consulta de Acesso (Filtro).


*** Test Cases ***

Testcase: Preencher todos os campos na tela Consulta de Acesso (Filtro)
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Controle para a Consulta de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso (Filtro)
  E selecionar uma opção no campo Tipo de Colaborador "Empregado"
  E selecionar uma opção no campo Empresa "Alfandega"
  E preencher o campo Matrícula "1"
  E preencher o campo Nome "jose"
  E preencher o campo Número do CPF "123"
  E preencher o campo Crachá "333"
  E preencher o campo Data Inicial "15/02/2022"
  E preencher o campo Data Final "12/03/2022"
  E preencher o campo Hora Inicial "12:00"
  E preencher o campo Hora Final "13:00"
  E selecionar uma opção no campo Tipo "Acesso Permitido (A Serviço)"
  E selecionar uma opção no campo Planta "AAC"
  E selecionar uma opção no campo Codin "REP - AAC"
  E preencher o campo External Key "123"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Controle para a Consulta de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Controle para a Consulta de Acesso de Colaborador

Então devo visualizar a tela: Consulta de Acesso (Filtro)
  resource_ctrconsacessocolaborador.Acessar Tela Consulta de Acesso (Filtro)

E selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
  resource_ctrconsacessocolaborador.Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_ctrconsacessocolaborador.Selecionar uma opção no campo Empresa "${EMPRESA}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_ctrconsacessocolaborador.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_ctrconsacessocolaborador.Preencher o campo Nome "${NOME}"

E preencher o campo Número do CPF "${NÚMERO_DO_CPF}"
  resource_ctrconsacessocolaborador.Preencher o campo Número do CPF "${NÚMERO_DO_CPF}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_ctrconsacessocolaborador.Preencher o campo Crachá "${CRACHÁ}"

E preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  resource_ctrconsacessocolaborador.Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data Final "${DIA}/${MES}/${ANO}"
  resource_ctrconsacessocolaborador.Preencher o campo Data Final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora Inicial "${HORA}:${MIN}"
  resource_ctrconsacessocolaborador.Preencher o campo Hora Inicial "${HORA}:${MIN}"

E preencher o campo Hora Final "${HORA}:${MIN}"
  resource_ctrconsacessocolaborador.Preencher o campo Hora Final "${HORA}:${MIN}"

E selecionar uma opção no campo Tipo "${TIPO}"
  resource_ctrconsacessocolaborador.Selecionar uma opção no campo Tipo "${TIPO}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_ctrconsacessocolaborador.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_ctrconsacessocolaborador.Selecionar uma opção no campo Codin "${CODIN}"

E preencher o campo External Key "${EXTERNAL_KEY}"
  resource_ctrconsacessocolaborador.Preencher o campo External Key "${EXTERNAL_KEY}"
