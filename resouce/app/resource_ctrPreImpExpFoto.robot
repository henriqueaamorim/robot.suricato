*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Foto | Colaborador

# SCREEN
Acessar Tela Importador/Exportador de Fotos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Importador/Exportador de Fotos
  ${APPNAME}  Set Variable    ctrPreImpExpFoto
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BOX
Selecionar box: Exportar
    ${ELEMENT}  Set Variable  xpath=//input[@id='id-opt-tipooper-0']
  
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}

Selecionar box: Importar
    ${ELEMENT}  Set Variable  xpath=//input[@id='id-opt-tipooper-1']
  
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}

#VERIFY
Verificar o campo Operação

    ${LABEL}      Set Variable   xpath=//span[contains(text(),'Operação')] | //span[@id='id_label_tipooper']
    ${CHECKBOX1}  Set Variable   xpath=//input[@id='id-opt-tipooper-0']
    ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Exportar')]
    ${CHECKBOX2}  Set Variable   xpath=//input[@id='id-opt-tipooper-1']
    ${LABEL2}      Set Variable  xpath=//label[contains(text(),'Importar')]

  Element Should Contain  ${LABEL}    Operação
  Element Attribute Value Should Be   ${CHECKBOX1}  name   tipooper
  Element Should Contain  ${LABEL1}   Exportar
  Element Attribute Value Should Be   ${CHECKBOX2}  name   tipooper
  Element Should Contain  ${LABEL2}   Importar

Verificar o campo Empresa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Empresa')] | //span[@id='id_label_codiempr']
    ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_codiempr-container'] 
  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_codiempr-container  
  ELSE  
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Empresa')]
    ${CAMPO}  Set Variable  xpath=//select[@name='codiempr']
  Element Attribute Value Should Be  ${CAMPO}  name  codiempr
  END
  Element Should Contain  ${LABEL}  Empresa
  

Verificar o campo Tipo do Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo do Colaborador')]
     ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipocola-container'] 
     Sleep  2s
     Element Attribute Value Should Be   ${CAMPO}   id   select2-id_sc_field_tipocola-container
  ELSE  
     ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
     ${CAMPO}  Set Variable  xpath=//select[@name='tipocola']
     Element Attribute Value Should Be  ${CAMPO}  name  tipocola
  END
     Sleep  2s
     Element Should Contain  ${LABEL}   Tipo do Colaborador


Verificar o campo Cód. Matricula
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Cód. Matricula')] | //span[@id='id_label_codimatr']
    ${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codimatr'] 
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codimatr
  ELSE  
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Cód. Matricula')]
    ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']
  Element Attribute Value Should Be  ${CAMPO}  name  codimatr
  END
  Element Should Contain  ${LABEL}  Cód. Matricula

Verificar o campo Tipo de Foto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Foto')] | //span[@id='id_label_tipofoto']
    ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipofoto-container'] 
  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_tipofoto-container
  ELSE  
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo de Foto')]
    ${CAMPO}  Set Variable  xpath=//select[@name='tipofoto']
  Element Attribute Value Should Be  ${CAMPO}  name  tipofoto
  END
  Element Should Contain  ${LABEL}  Tipo de Foto

Verificar o campo Tipo de Exportação
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Exportação')]
    ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipoext-container'] 

  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_tipoext-container
  Element Should Contain  ${LABEL}  Tipo de Exportação
#FIELD

Selecionar uma opção no campo Operação "${OPERACAO}"
  IF  "${OPERACAO}" == "Exportar"
    Click Element  xpath=//*[@name=tipooper][@value="E"]
  ELSE
    Click Element  xpath=//*[@name=tipooper][@value="I"]
  END

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO}

Preencher o Campo Cód. Matricula "${MATRICULA}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}

Selecionar uma opção no campo Tipo de Foto "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipofoto"]  ${TIPO}
