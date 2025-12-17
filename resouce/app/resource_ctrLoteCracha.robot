*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

# SCREEN
Acessar Tela Lote de Cracha
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrLoteCracha
  IF    "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable   Gerar Lote de Crachá
  ${ELEMENT}     Set Variable   xpath=//div[contains(text(),'Gerar Lote de Crachá')]
  ELSE
  ${SCREENNAME}  Set Variable  Lote de Cracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#FIELD
Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
  IF  "${TIPO}" == "Empregado"
    Click Element  xpath=//*[@name="edtipocola"][@value="1"]
  ELSE IF  "${TIPO}" == "Terceiro"
    Click Element  xpath=//*[@name="edtipocola"][@value="2"]
  ELSE IF  "${TIPO}" == "Parceiro"
    Click Element  xpath=//*[@name="edtipocola"][@value="3"]
  END

Preencher o campo Código "${CODIGO}"
  Input Text  xpath=//*[@name="edcolaboradores"]

Selecionar uma opção no campo Filtro "${FILTRO}"
  Select From List By Label   name=edfiltro  ${FILTRO}

Digitar no Campo De: "${CAMPO1}" Até: "${CAMPO2}"
  Input text  name=periodoini  ${CAMPO1}
  Input text  name=periodofin  ${CAMPO2}  

 
#BUTTON
#resource_btn.

#VERIFY CAMPOS

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//span[@id='id_label_codiempr']
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single css_codiempr_obj'])[1]
	Element Should Contain             ${LABEL}   Empresa


Verificar o campo Tipo de Colaborador    
  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Tipo de Colaborador')]
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-tipocola-0']
	${LABEL1}  Set Variable  xpath=//label[contains(text(,'Empregado'))]
	${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-tipocola-1']
	${LABEL2}  Set Variable  xpath=//label[contains(text(,'Terceiro'))]
	${CAMPO3}  Set Variable  xpath=//input[@id='id-opt-tipocola-2']
	${LABEL3}  Set Variable  xpath=//label[contains(text(,'Parceiro'))]
	
	Element Should Contain  ${LABEL}  Tipo de Colaborador
	Element Attribute Value Should Be  ${CAMPO1}  value  1  
	Element Attribute Value Should Be  ${CAMPO2}  value  2  
	Element Attribute Value Should Be  ${CAMPO3}  value  3   


Verificar o campo Filial       
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Filial')]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codifili_obj']
	Element Should Contain  ${LABEL}  Filial
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codifili_obj

Verificar o campo Organograma
	${LABEL}   Set Variable   xpath=//span[contains(text(),'Organograma')]	
	${CAMPO}   Set Variable   xpath=//span[@class='select2-selection select2-selection--single css_codiorgaloca_obj']
	Element Should Contain   ${LABEL}   Organograma
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiorgaloca_obj

Verificar o campo Local      
  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Local')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_locaorga_obj']	
	Element Should Contain  ${LABEL}  Local
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_locaorga_obj
	
Verificar o campo Situação 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Situação')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codisitu_obj']	
	Element Should Contain  ${LABEL}  Situação
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codisitu_obj
	
Verficar o campo Grupo de Cargo	
	${LABEL}  Set Variable   xpath=//span[@id='id_label_codiestrcarg']
	${CAMPO}  Set Variable   xpath=//span[@class='select2-selection select2-selection--single css_codiestrcarg_obj']
	Element Should COntain   ${LABEL}   Grupo de Cargo	
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiestrcarg_obj

Verificar o campo Grupo de Acesso 1 
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso')])[1]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codicarg_obj']
	Element Should Contain  ${LABEL}    Grupo de Acesso
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codicarg_obj

Verificar o campo Grupo de Acesso 2
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso')])[2]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiperm_obj']
	Element Should Contain  ${LABEL}    Grupo de Acesso
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiperm_obj
