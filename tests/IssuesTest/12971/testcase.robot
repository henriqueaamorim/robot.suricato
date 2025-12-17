*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/common/resource_btn.robot
Resource        ../../../resource/common/resource_report.robot
Resource        ../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot
Resource        ../../../resource/app/resource_frmAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Verificar se o problema das variaveis Grupo das procedures estão adequadas a 5 digitos.

*** Test Cases ***

Testcase: Acessar aplicação FRMAUTORIZARACESSOCOLABORADORES e fazer a inclusão de um novo colaborador.
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Então devo visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  E clicar em Abrir um Novo Registro
  Então devo visualizar a tela Áreas Restritas de Colaboradores (Inclusão)
  E preencher o campo Código Colaborador "285"
  E preencher o campo Grupo de Acesso "99999"
  E preencher o campo Data Final "23062023"
  E preencher o campo Hora Final "1400"
  E preencher o campo Observações "Teste Tarefa 12971" 
  E clicar em Incluir o Registro
  Então devo verificar se estou na tela Áreas Restritas de Colaboradores (Atualização)
  #E clicar em Apagar

*** Keywords ***

Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Então devo visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar em Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela Áreas Restritas de Colaboradores (Inclusão)
  resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Inclusão)

E preencher o campo Código Colaborador "${COLAB}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Código do Colaborador "${COLAB}"

E preencher o campo Grupo de Acesso "${ACESSO}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Grupo de Acesso "${ACESSO}"

E preencher o campo Data Final "${DATA}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Data Final "${DATA}"

E preencher o campo Hora Final "${HORA}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Hora Final "${HORA}"

E preencher o campo Observações "${OBSERVACOES}"
  resource_frmAutorizarAcessoColaboradores.Preencher o campo Observações "${OBSERVACOES}"

E clicar em Incluir o Registro
  resource_btn.Clicar no Botão Incluir o Registro

Então devo verificar se estou na tela Áreas Restritas de Colaboradores (Atualização)
  resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Atualização)

E clicar em Apagar
  resource_btn.Clicar No Botão Apagar