*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Keywords ***
# SCREEN
${ARGUMENTO} Acessar Tela Pré-Cadastro de Crachá (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Pré Cadastro de Crachá
  ${APPNAME}  Set Variable  frmprecadastrocracha69cra
  ${ELEMENT}  Set Variable    xpath=//*[contains(text(),' ${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}    10s
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
${ARGUMENTO} Acessar a Tela Pré-Cadastro de Crachá (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Pré-Cadastro de Crachá
  ${APPNAME}  Set Variable  frmprecadastrocracha69cra
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}    10s
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD

E Selecionar uma opção no campo Tipo do Crachá "${TIPO}"       
  Select from list by label  xpath=//*[@name="usofaixcrac"]  ${TIPO}

${ARGUMENTO} Preencher o Campo Tipo do Crachá "${TIPOCOLAB}"
  Click Element    xpath=//span[@class="select2-selection select2-selection--single css_usofaixcrac_obj"]
  Input Text    xpath=//input[@class="select2-search__field"]    "${TIPOCOLAB}"
 
E Preencher o Campo Número do Crachá "${CRACHA}"
  Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHA}

Clicar na opção "Sim" no campo Utilizar Tecnologia RFID
  Wait Until Element is Visible    xpath=//*[@id="idAjaxCheckbox_chkrfid"]/table/tbody/tr/td/input    10s
  Click Element  xpath=//*[@id="idAjaxCheckbox_chkrfid"]/table/tbody/tr/td/input


Clicar na opção "Sim" no campo Utiliza Criptografia
  Wait Until Element is Visible    xpath=//*[@id="idAjaxCheckbox_chkbarras"]/table/tbody/tr/td/input    10s
  Click Element  xpath=//*[@id="idAjaxCheckbox_chkbarras"]/table/tbody/tr/td/input

#VERIFY

E verificar o campo Tipo do Crachá
  ${LABEL}  Set Variable    //td[@class="scFormLabelOdd scUiLabelWidthFix css_usofaixcrac_label"]
	${CAMPO}  Set Variable  //span[@class="select2-selection select2-selection--single css_usofaixcrac_obj"]
	
	Element Should Contain  ${LABEL}  Tipo do Crachá 
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_usofaixcrac_obj

E verificar o campo Número do Crachá
  ${LABEL}  Set Variable  //td[@class="scFormLabelOdd scUiLabelWidthFix css_icard_label"]
	${CAMPO}  Set Variable  //input[@id='id_sc_field_icard']
	
	Element Should Contain  ${LABEL}  Número do Crachá
	Element Attribute Value Should Be  ${CAMPO}  name  icard
