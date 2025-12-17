*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos da tela Histórico de EPI por Colaborador - Filtro

*** Test Cases ***
Testcase: Preencher todos os campos da tela Histórico de EPI por Colaborador - Filtro
  [Tags]  REGISTER  POLYVALENT   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  Então devo ver a tela: Histórico de EPI por Colaborador - Filtro
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo Colaborador "Parceiro"
  E preencher o campo Matricula "ok"
  E preencher o campo Colaborador "ok"
  E preencher o campo Data Entrega inicial "10/10/2021" 
  E preencher o campo Data Entrega final "15/11/2022"
  E selecionar uma opção no campo EPI "Capacetes"
  E selecionar uma opção no campo Status Vencimento "PERÍODO EXCEÇÃO"  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Então devo ver a tela: Histórico de EPI por Colaborador - Filtro
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsHistoricoEPIColaborador.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_cnsHistoricoEPIColaborador.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matricula "${MATRICULA}"
  resource_cnsHistoricoEPIColaborador.Preencher o campo Matricula "${MATRICULA}"

E preencher o campo Colaborador "${COLABORADOR}"
  resource_cnsHistoricoEPIColaborador.Preencher o campo Colaborador "${COLABORADOR}"

E preencher o campo Data Entrega inicial "${DIA}/${MES}/${ANO}"
  resource_cnsHistoricoEPIColaborador.Preencher o campo Data Entrega inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data Entrega final "${DIA}/${MES}/${ANO}"
  resource_cnsHistoricoEPIColaborador.Preencher o campo Data Entrega final "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo EPI "${EPI}"
  resource_cnsHistoricoEPIColaborador.Selecionar uma opção no campo EPI "${EPI}"

E selecionar uma opção no campo Status Vencimento "${STATUS_VENCIMENTO}"
  resource_cnsHistoricoEPIColaborador.Selecionar uma opção no campo Status Vencimento "${STATUS_VENCIMENTO}"
