*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot
Resource        ../../../../resource/app/resource_frmAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Autorização de Acesso de Colaboradores.

*** Test Cases ***

Testcase: Cadastrar uma Autorização de Acesso de Colaboradores
  [Tags]  REGISTER  POLYVALENT  246  247
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Áreas Restritas de Colaboradores (Inclusão)
  E preencher o campo Código do Colaborador "2"
  E preencher o campo Grupo de Acesso "1"
  E preencher o campo Data Final "07/04/2022"
  E preencher o campo Hora Final "1200"
  E preencher o campo Observações "Observações"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Áreas Restritas de Colaboradores (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Áreas Restritas de Colaboradores (Inclusão)
  resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Inclusão)

E preencher o campo Código do Colaborador "${COLAB}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Código do Colaborador "${COLAB}"

E preencher o campo Grupo de Acesso "${ACESSO}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Grupo de Acesso "${ACESSO}"

E preencher o campo Data Final "${DATA}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Data Final "${DATA}"

E preencher o campo Hora Final "${HORA}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Hora Final "${HORA}"

E preencher o campo Observações "${OBSERVACOES}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Observações "${OBSERVACOES}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Áreas Restritas de Colaboradores (Atualização)
  resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Atualização)
  