*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachás por Faixa

# SCREEN
Acessar Tela Pré cadastro de crachá por faixa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Pré cadastro de crachá por faixa
  ${APPNAME}  Set Variable  frmprecadastrocrachaporfaixa
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Tipo de Crachá "${CRACHA}"
  Select from list by label  xpath=//*[@name="usofaixcrac"]  ${CRACHA}

Preencher o campo Máscara "${MASCARA}"
  Input Text  xpath=//*[@name="mascara"][@type="text"]  ${MASCARA}

Preencher o campo Inicío da Faixa "${INICIO}"
  Input Text  xpath=//*[@name="faixaini"][@type="text"]  ${INICIO}

Preencher o campo Final da Faixa "${FINAL}"
  Input Text  xpath=//*[@name="faixafim"][@type="text"]  ${FINAL}


#VERIFY

E verificar o campo Tipo do Crachá 
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_usofaixcrac']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_usofaixcrac-container']
	Element Should Contain  ${LABEL}  Tipo do Crachá
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_usofaixcrac-container

E verificar o campo Máscara
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_mascara']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_mascara']
	Element Should Contain  ${LABEL}  Inicío da Faixa 
	Element Attribute Value Should Be  ${CAMPO}  name  mascara

E verificar o campo Inicío da Faixa 
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_faixaini']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_faixaini']
	Element Should Contain  ${LABEL}  Inicío da Faixa 
	Element Attribute Value Should Be  ${CAMPO}  name  faixaini

E verificar o campo Final da Faixa 
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_faixafim']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_faixafim']
	Element Should Contain  ${LABEL}  Final da Faixa
	Element Attribute Value Should Be  ${CAMPO}  name  faixafim

