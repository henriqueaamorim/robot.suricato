*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot
Resource        ../../../../resource/app/resource_cnsColabGrupoHoraExtra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Colaboradores por Grupo - Hora Extra


*** Test Cases ***

Testcase: Preencher todos os campos da tela Colaboradores por Grupo - Hora Extra
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Hora Extra
  Então devo visualizar a tela: Hora Extra
  Ao clicar no botão: Cadastro
  Então devo visualizar a tela: Colaboradores por Grupo - Hora Extra
  E selecionar uma opção no campo Empresa "empresa 1"
  E preencher o campo Matrícula "ok"
  E selecionar uma opção no campo Tipo Colaborador "Parceiro"
  E preencher o campo Nome Colaborador "ok"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Então devo visualizar a tela: Hora Extra
  resource_frm_tbhoraextra.Acessar Tela Hora Extra

Ao clicar no botão: Cadastro
  resource_btn.Clicar No Botão Cadastro

Então devo visualizar a tela: Colaboradores por Grupo - Hora Extra
  resource_cnsColabGrupoHoraExtra.Acessar Tela Colaboradores por Grupo - Hora Extra

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsColabGrupoHoraExtra.Selecionar uma opção no campo Empresa "${EMPRESA}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsColabGrupoHoraExtra.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_cnsColabGrupoHoraExtra.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Nome Colaborador "${NOME_COLABORADOR}"
  resource_cnsColabGrupoHoraExtra.Preencher o campo Nome Colaborador "${NOME_COLABORADOR}"
