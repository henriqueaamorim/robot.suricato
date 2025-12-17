*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrconfigsenha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Configuração de Senha.

*** Test Cases ***

Testcase: Cadastrar uma Configuração de Senha
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  Então devo visualizar a tela: Configuração de Senha
  E preencher o campo Bloquear Login Após "3"
  E preencher o campo Desbloquear Login Em "3"
  E preencher o campo Validade da Senha "365"
  E preencher o campo Avisar Validade da Senha antes "14"
  E preencher o campo Validade Mínima da Senha "30"
  E preencher o campo Mínimo de Senhas no Histórico "5"
  E preencher o campo Quantidade Mínima de Dígitos da Senha "5"
  E preencher o campo Máximo de caracteres idênticos "5"
  E preencher o campo Mínimo de caracteres não alfabéticos "0"
  E preencher o campo Mínimo de caracteres não presentes na última senha "0"
  E clicar no botão: OK


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  resource_mnu.Clicar No Menu Configurações | Usuários | Diretiva de Segurança

Então devo visualizar a tela: Configuração de Senha
  resource_ctrconfigsenha.Acessar Tela Configuração de Senha

E preencher o campo Bloquear Login Após "${BLOQUEAR}"
  resource_ctrconfigsenha.Preencher o campo Bloquear Login Após "${BLOQUEAR}"

E preencher o campo Desbloquear Login Em "${DESBLOQUEAR}"
  resource_ctrconfigsenha.Preencher o campo Desbloquear Login Em "${DESBLOQUEAR}"

E preencher o campo Validade da Senha "${VALIDADE}"
  resource_ctrconfigsenha.Preencher o campo Validade da Senha "${VALIDADE}"

E preencher o campo Avisar Validade da Senha antes "${AVISO}"
  resource_ctrconfigsenha.Preencher o campo Avisar Validade da Senha antes "${AVISO}"

E preencher o campo Validade Mínima da Senha "${VALIDADE}"
  resource_ctrconfigsenha.Preencher o campo Validade Mínima da Senha "${VALIDADE}"

E preencher o campo Mínimo de Senhas no Histórico "${MINIMO}"
  resource_ctrconfigsenha.Preencher o campo Mínimo de Senhas no Histórico "${MINIMO}"

E preencher o campo Quantidade Mínima de Dígitos da Senha "${DIGITOS}"
  resource_ctrconfigsenha.Preencher o campo Quantidade Mínima de Dígitos da Senha "${DIGITOS}"

E preencher o campo Máximo de caracteres idênticos "${CARACTERES}"
  resource_ctrconfigsenha.Preencher o campo Máximo de caracteres idênticos "${CARACTERES}"

E preencher o campo Mínimo de caracteres não alfabéticos "${CARACTERES}"
  resource_ctrconfigsenha.Preencher o campo Mínimo de caracteres não alfabéticos "${CARACTERES}"

E preencher o campo Mínimo de caracteres não presentes na última senha "${CARACTERES}"
  resource_ctrconfigsenha.Preencher o campo Mínimo de caracteres não presentes na última senha "${CARACTERES}"

E clicar no botão: OK
  resource_btn.Clicar No Botão OK