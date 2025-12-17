*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelmovimentocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher os campos da tela Movimento de Colaboradores - Filtro.


*** Test Cases ***

Testcase: Preencher os campos da tela Movimento de Colaboradores - Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Movimento de Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Movimento de Colaboradores - Filtro
  E selecionar uma opção no campo Empresa "EMPR TEST"
  E selecionar uma opção no campo Tipo do Colaborador "Empregado"
  E preencher o campo Código da Planta "1" 
  E preencher o campo Código do Codin "1"
  E selecionar uma opção no campo Tipo do Acesso "9 - Acesso Permitido no Estacionamento"
  E preencher o campo Data Inicial "14/03/2022"
  E preencher o campo Data Final "15/03/2022"
  E preencher o campo Hora Inicial "12:00"
  E preencher o campo Hora Final "13:00"
  E preencher o campo Matrícula "123"
  E selecionar uma opção no campo Exibir Usuário "Não"
  
*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Movimento de Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Movimento de Colaboradores 

Então devo visualizar a tela: Movimento de Colaboradores - Filtro
  resource_consrelmovimentocolaborador.Acessar Tela Movimento de Colaboradores - Filtro
  
E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consrelmovimentocolaborador.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_consrelmovimentocolaborador.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Código da Planta "${CÓDIGO_DA_PLANTA}"
  resource_consrelmovimentocolaborador.Preencher o campo Código da Planta "${CÓDIGO_DA_PLANTA}"

E preencher o campo Código do Codin "${CÓDIGO_DO_CODIN}"
  resource_consrelmovimentocolaborador.Preencher o campo Código do Codin "${CÓDIGO_DO_CODIN}"

E selecionar uma opção no campo Tipo do Acesso "${TIPO_DO_ACESSO}"
  resource_consrelmovimentocolaborador.Selecionar uma opção no campo Tipo do Acesso "${TIPO_DO_ACESSO}"

E preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  resource_consrelmovimentocolaborador.Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data Final "${DIA}/${MES}/${ANO}"
  resource_consrelmovimentocolaborador.Preencher o campo Data Final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora Inicial "${HORA}:${MIN}"
  resource_consrelmovimentocolaborador.Preencher o campo Hora Inicial "${HORA}:${MIN}"

E preencher o campo Hora Final "${HORA}:${MIN}"
  resource_consrelmovimentocolaborador.Preencher o campo Hora Final "${HORA}:${MIN}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consrelmovimentocolaborador.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
  resource_consrelmovimentocolaborador.Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
