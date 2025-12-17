*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Foto | Visitante

# SCREEN
Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle
#(246)(249)
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Visitante - Pré Seleção (Importador/Exportador) - Controle
  ${APPNAME}     Set Variable   ctrPreImpExpFotoVisit
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#VERIFY
Verificar o campo Operação
    ${LABEL}      Set Variable   xpath=//span[contains(text(),'Operação')] | //span[@id='id_label_tipooper']
    ${CHECKBOX1}  Set Variable   xpath=//input[@id='id-opt-tipooper-1']
    ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Exportar')]
    ${CHECKBOX2}  Set Variable   xpath=//input[@id='id-opt-tipooper-2']
    ${LABEL2}      Set Variable  xpath=//label[contains(text(),'Importar')]

  Element Should Contain  ${LABEL}    Operação
  Element Attribute Value Should Be   ${CHECKBOX1}  name   tipooper
  Element Should Contain  ${LABEL1}   Exportar
  Element Attribute Value Should Be   ${CHECKBOX2}  name   tipooper
  Element Should Contain  ${LABEL2}   Importar

Verificar o campo Tipo de Documento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Documento')] | //span[@id='id_label_tipodocu']
    ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_tipodocu_obj']
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_tipodocu_obj  
  ELSE
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo de Documento')]
    ${CAMPO}  Set Variable  xpath=//select[@name='tipodocu']
  Element Attribute Value Should Be  ${CAMPO}  name  tipodocu  
  END
  Element Should Contain  ${LABEL}  Tipo de Documento
  

Verificar o campo Tipo de Foto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Foto')]
    ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipofoto-container']
  Element Attribute Value Should Be  ${CAMPO}  id   select2-id_sc_field_tipofoto-container  
  ELSE
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo de Foto')]
    ${CAMPO}  Set Variable  xpath=//select[@name='tipofoto']
  Element Attribute Value Should Be  ${CAMPO}  name  tipofoto  
  END
  Element Should Contain  ${LABEL}  Tipo de Foto

Verificar o campo Tipo de Exportação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Exportação')] | //span[@id='id_label_tipoext']
    ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipoext-container']
  Element Attribute Value Should Be  ${CAMPO}  id   select2-id_sc_field_tipoext-container 
  ELSE
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo de Exportação')]
    ${CAMPO}  Set Variable  xpath=//select[@name='tipoext']
  Element Attribute Value Should Be  ${CAMPO}  name  tipoext  
  END
  Element Should Contain  ${LABEL}  Tipo de Exportação

#FIELD
Selecionar uma opção no campo Operação "${OPERACAO}"
  IF  "${OPERACAO}" == "Exportar"
    Click Element  xpath=//*[@name=tipooper][@value="E"]
  ELSE
    Click Element  xpath=//*[@name=tipooper][@value="I"]
  END

Selecionar uma opção no campo Tipo de Documento "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipodocu"]  ${TIPO}

Selecionar uma opção no campo Tipo de Foto "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipofoto"]  ${TIPO}

Selecionar uma opção no campo Tipo de Exportação "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipoext"]  ${TIPO}
