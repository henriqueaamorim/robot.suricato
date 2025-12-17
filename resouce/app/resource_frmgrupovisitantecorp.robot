*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Grupo de Visitante

# SCREEN
Acessar Tela Cadastro de Grupo de Visitantes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Visitantes (Atualização)
  ${APPNAME}  Set Variable  frmgrupovisitantecorp
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro de Grupo de Visitantes (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Visitantes (Inclusão)
  ${APPNAME}  Set Variable  frmgrupovisitantecorp
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn


#FIELD
Preencher o campo Nome do Grupo de Visitantes "${GRUPO}"
  Input Text  xpath=//*[@name="nomegrupvisi"][@type="text"]   ${GRUPO}

Preencher o campo Empresa Terceira "${EMPRESA}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${EMPRESA}
  # Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Quantidade de Visitantes do Grupo "${QUANT}"
  Input Text  xpath=//*[@name="quanvisisema"][@type="text"]  ${QUANT}

Preencher o campo Telefone do Grupo de Visitantes "${TEL}"
  Input Text  xpath=//*[@name="numetelegrup"][@type="text"]  ${TEL}

Preencher o campo Empresa Grupo de Visitantes "${GRUPO}"
  Input Text  xpath=//*[@name="nomeempr"][@type="text"]  ${GRUPO}

#VERIFY

E verificar o campo Nome do Grupo de Visitantes 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Grupo de Visitantes 
	Element Attribute Value Should Be  ${CAMPO}  name  nomegrupvisi

E verificar o campo Empresa Terceira 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Empresa Terceira 
	Element Attribute Value Should Be  ${CAMPO}  name  codiemprcont

E verificar o campo Empresa Grupo de Visitantes 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Empresa Grupo de Visitantes
	Element Attribute Value Should Be  ${CAMPO}  name  nomeempr

E verificar o campo Quantidade de Visitates no Grupo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Quantidade de Visitantes no Grupo  
	Element Attribute Value Should Be  ${CAMPO}  name  quanvisisema

E verificar o campo Telefone do Grupo de Visitantes 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Telefone do Grupo de Visitantes
	Element Attribute Value Should Be  ${CAMPO}  name  numetelegrup