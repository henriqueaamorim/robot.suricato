*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin


# SCREEN
Acessar Tela Modelo de Codins (Inclusão) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Codins (Inclusão)
  ${APPNAME}     Set Variable  frmModeloColetores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Modelo de Codins (Atualização) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Codins (Atualização)
  ${APPNAME}     Set Variable  frmModeloColetores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Cadastro de Modelo de Equipamento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Equipamento
  ${APPNAME}  Set Variable  frmColetores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
Clicar Texto "Imagem não Encontrada"
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr/td/table/tbody/tr/td/a

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
	Input Text  xpath=//*[@name="descmodecole"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Modelo "${MODELO}"
	Select From List By Label  xpath=//*[@name="modecont"]  ${MODELO}

Preencher o campo CAREP "${CAREP}"
	Input Text  xpath=//*[@name="carep"][@type="text"]  ${CAREP}

Selecionar uma opção no campo Tipo de Comunicação "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipocomu"]  ${TIPO}


#VERIFY
Verificar o campo Descrição
  ${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   id  id_sc_field_descmodecole

Verificar o campo Modelo
  ${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Modelo
 	Element Attribute Value Should Be  ${CAMPO}   id  id_sc_field_modecont

Verificar o campo Tipo de Comunicação
  ${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Comunicação
 	Element Attribute Value Should Be  ${CAMPO}   name  tipocomu
