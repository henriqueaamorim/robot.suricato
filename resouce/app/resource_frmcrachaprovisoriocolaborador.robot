*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

# SCREEN
Acessar Tela Provisório de Colaboradores (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Provisório de Colaboradores (Inclusão)
  ${APPNAME}  Set Variable  frmcrachaprovisoriocolaborador
  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Provisório de Colaboradores (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmcrachaprovisoriocolaborador

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Provisório de Colaboradores
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${SCREENNAME}  Set Variable  Provisório de Colaboradores (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Código do Colaborador
  ${ELEMENT}  Set Variable  id=cap_idcolab

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
	IF  "${SERVER}" != "172.16.14.246"
    Switch Window  locator=NEW
    Maximize Browser Window
  END

#FIELD

Preencher campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  # Necessário clicar fora para validar o Input acima
  Click Element  xpath=//*[@id="id_label_idcolab"]

Preencher campo Crachá "${CRACHA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${CRACHA}
  # Necessário clicar fora para validar o Input acima
  Click Element  xpath=//*[@id="id_label_idcolab"]

Preencher o campo Data/Hora Inicial "${DATA} | ${HORA}"
  #Inserindo Data
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DATA}
  #Inserindo Hora
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${HORA}

Preencher o campo Data/Hora Final "${DATA} | ${HORA}"
  #Inserindo Data
  Input Text  xpath=//*[@name="horainic"][@type="text"]  ${DATA}
  #Inserindo Hora
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}


#VERIFY

Verificar o campo Código do Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[5]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Utiliza Criptografia?
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Utiliza Criptografia?
 	Element Attribute Value Should Be  ${CAMPO}   name   chkbarras[]

Verificar o campo Crachá
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Data/Hora Inicial
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/input[1]
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Data/Hora Inicial
 	Element Attribute Value Should Be  ${CAMPO1}   name   datainic
  Element Attribute Value Should Be  ${CAMPO2}   name   horainic

Verificar o campo Data/Hora Final
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/input[1]
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Data/Hora Final
 	Element Attribute Value Should Be  ${CAMPO1}   name   datafina
  Element Attribute Value Should Be  ${CAMPO2}   name   horafina
