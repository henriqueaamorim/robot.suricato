*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEspelhoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela Perfil de Acesso


*** Test Cases ***
Testcase: Preencher todos os campos na tela Perfil de Acesso
  [Tags]  REGISTER  POLYVALENT  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Perfil de Acesso
  Então devo visualizar a tela: Perfil de Acesso
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo Colaborador "Parceiro"
  E preencher o campo Matricula "123"
  E preencher o campo Crachá "333"

*** Keywords ***
Dado que eu acesse o menu: Registro | Perfil de Acesso
  resource_mnu.Clicar No Menu Registro | Perfil de Acesso

Então devo visualizar a tela: Perfil de Acesso
  resource_ctrEspelhoAcesso.Acessar Tela Perfil de Acesso

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_ctrEspelhoAcesso.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
  resource_ctrEspelhoAcesso.Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"

E preencher o campo Matricula "${MATRICULA}"
  resource_ctrEspelhoAcesso.Preencher o campo Matricula "${MATRICULA}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_ctrEspelhoAcesso.Preencher o campo Crachá "${CRACHÁ}"
