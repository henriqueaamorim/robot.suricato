*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrmensagemcoletiva.robot
Resource        ../../../../resource/app/resource_ctrabrangenciamensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Abrangência


*** Test Cases ***

Testcase: Preencher todos os campos na tela Abrangência
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  Ao visualizar a tela: Mensagens Coletivas
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo de Colaborador "Empregado"
  E preencher o campo Colaborador "abc"
  #E selecionar uma opção no campo Filial ""
  E selecionar uma opção no campo Local "a"
  E preencher o campo Cargo "123"
  E preencher o campo Escala "31"
  E selecionar uma opção no campo Empresa Terceira "GOOGLE"

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

Ao visualizar a tela: Mensagens Coletivas
  resource_ctrmensagemcoletiva.Acessar Tela Mensagens Coletivas

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrabrangenciamensagem.Acessar Tela Abrangência

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_ctrabrangenciamensagem.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
  resource_ctrabrangenciamensagem.Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"

E preencher o campo Colaborador "${COLABORADOR}"
  resource_ctrabrangenciamensagem.Preencher o campo Colaborador "${COLABORADOR}"

E selecionar uma opção no campo Filial "${FILIAL}"
  resource_ctrabrangenciamensagem.Selecionar uma opção no campo Filial "${FILIAL}"

E selecionar uma opção no campo Local "${LOCAL}"
  resource_ctrabrangenciamensagem.Selecionar uma opção no campo Local "${LOCAL}"

E preencher o campo Cargo "${CARGO}"
  resource_ctrabrangenciamensagem.Preencher o campo Cargo "${CARGO}"

E preencher o campo Escala "${ESCALA}"
  resource_ctrabrangenciamensagem.Preencher o campo Escala "${ESCALA}"

E selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
  resource_ctrabrangenciamensagem.Selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
