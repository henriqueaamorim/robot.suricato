*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Diretiva de Segurança

# SCREEN
Acessar Tela Configuração de Senha
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configuração de Senha
  ${APPNAME}  Set Variable  ctrconfigsenha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Bloquear Login Após "${BLOQUEAR}"
  Input Text    xpath=//*[@name="tentalogin"][@type="text"]    ${BLOQUEAR}

Preencher o campo Desbloquear Login Em "${DESBLOQUEAR}"
  Input Text    xpath=//*[@name="desbloqlogin"][@type="text"]    ${DESBLOQUEAR}

Preencher o campo Validade da Senha "${VALIDADE}"
  Input Text    xpath=//*[@name="validsenha"][@type="text"]    ${VALIDADE}

Preencher o campo Avisar Validade da Senha antes "${AVISO}"
  Input Text    xpath=//*[@name="avisovalidsenha"][@type="text"]     ${AVISO}

Preencher o campo Validade Mínima da Senha "${VALIDADE}"
  Input Text    xpath=//*[@name="valminimasenha"][@type="text"]    ${VALIDADE}

Selecionar a opção Permitir Reutilizar Senha Anterior
  Click Element  xpath=//*[@name="reutsenha[]"]

Preencher o campo Mínimo de Senhas no Histórico "${MINIMO}"
  Input Text    xpath=//*[@name="histminimosenha"][@type="text"]     ${MINIMO}

Preencher o campo Quantidade Mínima de Dígitos da Senha "${DIGITOS}"
  Input Text    xpath=//*[@name="qtddigitsenha"][@type="text"]     ${DIGITOS}

Preencher o campo Máximo de caracteres idênticos "${CARACTERES}"
  Input Text    xpath=//*[@name="maxcharidenticos"][@type="text"]     ${CARACTERES}

Preencher o campo Mínimo de caracteres não alfabéticos "${CARACTERES}"
  Input Text    xpath=//*[@name="mincharnaoalfa"][@type="text"]    ${CARACTERES}

Preencher o campo Mínimo de caracteres não presentes na última senha "${CARACTERES}"
  Input Text    xpath=//*[@name="mincharnaoultimasenha"][@type="text"]    ${CARACTERES}

Selecionar a opção Letras em caixa baixa (minúsculo)
  Click Element  xpath=//*[@name="obrigatoriocaixabaixa[]"]

Selecionar a opção Letras em caixa alta (maíusculo)
  Click Element  xpath=//*[@name="letraperm[]"]

Selecionar a opção Números
  Click Element  xpath=//*[@name="numperm[]"]

Preencher o campo Símbolos "${SIMBOLOS}"
  Input Text    xpath=//*[@name="mincharnaoultimasenha"][@type="text"]    ${SIMBOLOS}

#VERIFY
Verificar o campo Bloquear Login Após
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Bloquear Login Após
  Element Attribute Value Should Be  ${CAMPO}  name  tentalogin

Verificar o campo Desbloquear Login Em
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Desbloquear Login Em
  Element Attribute Value Should Be  ${CAMPO}  name  desbloqlogin

Verificar o campo Validade da Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Validade da Senha
  Element Attribute Value Should Be  ${CAMPO}  name  validsenha

Verificar o campo Avisar Validade da Senha antes
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Avisar Validade da Senha antes
  Element Attribute Value Should Be  ${CAMPO}  name  avisovalidsenha

Verificar o campo Validade Mínima da Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Validade Mínima da Senha
  Element Attribute Value Should Be  ${CAMPO}  name  valminimasenha

Verificar o campo Permitir Reutilizar Senha Anterior
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Permitir Reutilizar Senha Anterior
  Element Attribute Value Should Be  ${CHECKBOX}  name  reutsenha[]

Verificar o campo Mínimo de Senhas no Histórico
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Mínimo de Senhas no Histórico
  Element Attribute Value Should Be  ${CAMPO}  name  histminimosenha

Verificar a label Complexidade da Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  Element Should Contain  ${LABEL}  Complexidade da Senha

Verificar o campo Quantidade Mínima de Dígitos da Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Quantidade Mínima de Dígitos da Senha
  Element Attribute Value Should Be  ${CAMPO}  name  qtddigitsenha

Verificar o campo Máximo de caracteres idênticos
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Máximo de caracteres idênticos
  Element Attribute Value Should Be  ${CAMPO}  name  maxcharidenticos

Verificar o campo Mínimo de caracteres não alfabéticos
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Mínimo de caracteres não alfabéticos
  Element Attribute Value Should Be  ${CAMPO}  name  mincharnaoalfa

Verificar o campo Mínimo de caracteres não presentes na última Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Mínimo de caracteres não presentes na última senha
  Element Attribute Value Should Be  ${CAMPO}  name  mincharnaoultimasenha

Verificar o campo Letras em caixa baixa (minúsculo)
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Letras em caixa baixa (minúsculo)
  Element Attribute Value Should Be  ${CHECKBOX}  name  obrigatoriocaixabaixa[]

Verificar o campo Letras em caixa alta (maiúsculo)
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Letras em caixa alta (maiúsculo)
  Element Attribute Value Should Be  ${CHECKBOX}  name  letraperm[]

Verificar o campo Números
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Números
  Element Attribute Value Should Be  ${CHECKBOX}  name  numperm[]

Verificar o campo Símbolos
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Símbolos
  Element Attribute Value Should Be  ${CAMPO}  name  simbolos