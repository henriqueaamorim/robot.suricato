*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU


# SCREEN
${ARGUMENTO} Visualizar a Tela Crachá (Complementar)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Crachá
  ${APPNAME}  Set Variable  frmcadastrodecracha
  ${ELEMENT}  Set Variable    xpath=//span[@id='id_label_detalhecracha']

  Wait Until Element is Visible  ${ELEMENT}    timeout=10s
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"  

E verificar o Campo Checkbox
	Element Attribute Value Should Be  sc_check_vert[1]    name   sc_check_vert[1]

E verificar o Campo Tecnologia
    ${LABEL}    Set Variable    scFormLabelOddMult css_tecncrac__label sc-col-title
	${CAMPO}    Set Variable    select2-selection select2-selection--single css_tecncrac__obj
	
	Element Should Contain  ${LABEL}  Tecnologia
	Element Attribute Value Should Be  ${CAMPO}  class    select2-selection select2-selection--single css_tecncrac__obj

E verificar o Campo Data de Alteração	
    ${LABEL}    Set Variable    scFormLabelOddMult css_dataalte__label sc-col-title
	${CAMPO}    Set Variable    sc-js-input scFormObjectOddMult css_dataalte__obj hasDatepicker
	
	Element Should Contain  ${LABEL}  Data de Alteração	
	Element Attribute Value Should Be  ${CAMPO}  class    sc-js-input scFormObjectOddMult css_dataalte__obj hasDatepicker

E verificar o Campo Número Físico
    ${LABEL}    Set Variable    scFormLabelOddMult css_numefisicrac__label sc-col-title
	${CAMPO}    Set Variable    sc-js-input scFormObjectOddMult css_numefisicrac__obj
	
	Element Should Contain  ${LABEL}  Número Físico
	Element Attribute Value Should Be  ${CAMPO}  class    sc-js-input scFormObjectOddMult css_numefisicrac__obj

E verificar o Campo Atribuir Nr.: Fisico

    ${LABEL}    Set Variable    scFormLabelOddMult css_chknumfis__label sc-col-title
	${CAMPO}    Set Variable    sc-js-input scFormObjectOddMult css_numefisicrac__obj
	
	Element Should Contain  ${LABEL}  Atribuir Nr.: Fisico
	Element Attribute Value Should Be  ${CAMPO}  class    sc-js-input scFormObjectOddMult css_numefisicrac__obj        