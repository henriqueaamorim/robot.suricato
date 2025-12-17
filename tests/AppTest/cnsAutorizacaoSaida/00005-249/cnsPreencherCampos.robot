*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot
Resource    ../../cnsAlarmesTratados/00005/testcase.robot
Resource    ../../../../resource/app/resource_frmHistoricoFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Preencher todos os campos da tela: Autorizações de Saída (Filtro)

*** Test Cases ***
Testcase: Preencher todos os campos da tela: Autorizações de Saída (Filtro)
  [Tags]  REGISTER  POLYVALENT  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Quando visualizar a tela: Autorizações de Saída (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Autorizações de Saída (Filtro)
  E preencher o campo Código "ok"
  E selecionar uma opção no campo Data "Exatamente igual" 
  E preencher o campo Data "10/10/2020"
  E selecionar uma opção no campo Hora "Exatamente igual"
  E preencher o campo Hora "11:30:02"
  E selecionar uma opção no campo Empresa "Teste" 
  E selecionar uma opção no campo Tipo Alarme "Terceiro"
  E preencher o campo Matrícula "ok"
  E selecionar uma opção no campo Tipo Documento "Identidade"
  E selecionar uma opção no campo Número Documento "Exatamente igual"
  E preencher o campo Número Documento "ok"



*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Quando visualizar a tela: Autorizações de Saída (Consulta)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no Botão Pesquisar Registros

Então devo visualizar a tela: Autorizações de Saída (Filtro)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída (Filtro)

E preencher o campo Código "${CÓDIGO}"
  resource_cnsAutorizacaoSaida.Preencher o campo Código "${CÓDIGO}"

E selecionar uma opção no campo Data "${DATA}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Data "${DATA}"

E preencher o campo Data "${DIA}/${MES}/${ANO}"
  resource_cnsAutorizacaoSaida.Preencher o campo Data "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Hora "${HORA}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Hora "${HORA}"

E preencher o campo Hora "${HORA}:${MIN}"
  resource_cnsAutorizacaoSaida.Preencher o campo Hora "${HORA}:${MIN}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsAutorizacaoSaida.Preencher o campo Matrícula "${MATRÍCULA}"

E selecionar uma opção no campo Tipo Documento "${TIPO_DOCUMENTO}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Tipo Documento "${TIPO_DOCUMENTO}"

E selecionar uma opção no campo Número Documento "${NÚMERO_DOCUMENTO}"
  resource_cnsAutorizacaoSaida.Selecionar uma opção no campo Número Documento "${NÚMERO_DOCUMENTO}"

E preencher o campo Número Documento "${NÚMERO_DOCUMENTO}"
  resource_cnsAutorizacaoSaida.Preencher o campo Número Documento "${NÚMERO_DOCUMENTO}"
