*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrconfigsenha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configuração de Senha
${APPNAME}     ctrconfigsenha
${OBJETIVO}    Verificar todos os campos na tela Configuração de Senha.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Configuração de Senha
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  Então devo visualizar a tela: Configuração de Senha
  E verificar o campo Bloquear Login Após
  E verificar o campo Desbloquear Login Em
  E verificar o campo Validade da Senha
  E verificar o campo Avisar Validade da Senha antes
  E verificar o campo Validade Mínima da Senha
  E verificar o campo Permitir Reutilizar Senha Anterior
  E verificar o campo Mínimo de Senhas no Histórico
  E verificar a label Complexidade da Senha
  E verificar o campo Quantidade Mínima de Dígitos da Senha
  E verificar o campo Máximo de caracteres idênticos
  E verificar o campo Mínimo de caracteres não alfabéticos
  E verificar o campo Mínimo de caracteres não presentes na última Senha
  E verificar o campo Letras em caixa baixa (minúsculo)
  E verificar o campo Letras em caixa alta (maiúsculo)
  E verificar o campo Números
  E verificar o campo Símbolos
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  resource_mnu.Clicar No Menu Configurações | Usuários | Diretiva de Segurança

Então devo visualizar a tela: Configuração de Senha
  resource_ctrconfigsenha.Acessar Tela Configuração de Senha

E verificar o campo Bloquear Login Após
  resource_ctrconfigsenha.Verificar o campo Bloquear Login Após

E verificar o campo Desbloquear Login Em
  resource_ctrconfigsenha.Verificar o campo Desbloquear Login Em

E verificar o campo Validade da Senha
  resource_ctrconfigsenha.Verificar o campo Validade da Senha

E verificar o campo Avisar Validade da Senha antes
  resource_ctrconfigsenha.Verificar o campo Avisar Validade da Senha antes

E verificar o campo Validade Mínima da Senha
  resource_ctrconfigsenha.Verificar o campo Validade Mínima da Senha

E verificar o campo Permitir Reutilizar Senha Anterior
  resource_ctrconfigsenha.Verificar o campo Permitir Reutilizar Senha Anterior

E verificar o campo Mínimo de Senhas no Histórico
  resource_ctrconfigsenha.Verificar o campo Mínimo de Senhas no Histórico

E verificar a label Complexidade da Senha
  resource_ctrconfigsenha.Verificar a label Complexidade da Senha

E verificar o campo Quantidade Mínima de Dígitos da Senha
  resource_ctrconfigsenha.Verificar o campo Quantidade Mínima de Dígitos da Senha

E verificar o campo Máximo de caracteres idênticos
  resource_ctrconfigsenha.Verificar o campo Máximo de caracteres idênticos

E verificar o campo Mínimo de caracteres não alfabéticos
  resource_ctrconfigsenha.Verificar o campo Mínimo de caracteres não alfabéticos

E verificar o campo Mínimo de caracteres não presentes na última Senha
  resource_ctrconfigsenha.Verificar o campo Mínimo de caracteres não presentes na última Senha

E verificar o campo Letras em caixa baixa (minúsculo)
  resource_ctrconfigsenha.Verificar o campo Letras em caixa baixa (minúsculo)

E verificar o campo Letras em caixa alta (maiúsculo)
  resource_ctrconfigsenha.Verificar o campo Letras em caixa alta (maiúsculo)

E verificar o campo Números
  resource_ctrconfigsenha.Verificar o campo Números

E verificar o campo Símbolos
  resource_ctrconfigsenha.Verificar o campo Símbolos

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"