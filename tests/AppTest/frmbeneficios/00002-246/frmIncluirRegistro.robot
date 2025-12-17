*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Benefício.


*** Test Cases ***

Testcase: Cadastrar um Benefício
  [Tags]  REGISTER  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Então devo visualizar a tela: Benefícios (Consulta)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Benefícios (Inclusão)
  E preencher o campo Código do Benefício "1"
  E preencher o campo Descrição "Descrição"
  E preencher o campo Máximo de Entregas sem Retiradas "10"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Benefícios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Benefícios (Inclusão)
  resource_frmbeneficios.Acessar Tela Benefícios (Inclusão)

E preencher o campo Código do Benefício "${BENEFICIO}"
  resource_frmbeneficios.Preencher o campo Código do Benefício "${BENEFICIO}"

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmbeneficios.Preencher o campo Descrição "${DESCRICAO}"

E preencher o campo Máximo de Entregas sem Retiradas "${ENTREGAS}"
  resource_frmbeneficios.Preencher o campo Máximo de Entregas sem Retiradas "${ENTREGAS}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

Então devo visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios