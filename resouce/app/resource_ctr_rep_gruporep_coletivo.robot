*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

# SCREEN
Acessar Tela Atualizar Grupo de REP Coletivo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Atualizar Grupo de REP Coletivo
  ${APPNAME}  Set Variable  ctr_rep_gruporep_coletivo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#BUTTON
#resource_btn.


#VERIFY 

E verificar o campo Grupo de REP 
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo de REP')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_gruporepid_obj']
	
	Element Should Contain  ${LABEL}  Grupo de REP
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_gruporepid_obj   

E verificar o campo Empresa    
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_codiempr']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiempr_obj']
 
    sleep  2s
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiempr_obj

E verificar o campo Filial     
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_codifili']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codifili_obj']
	
	sleep  2s
	Element Should Contain  ${LABEL}  Filial
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codifili_obj
	

E verificar o campo Organograma 
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_codiorgaloca']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiorgaloca_obj']
	
	sleep  2s
	Element Should Contain  ${LABEL}  Organograma 
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiorgaloca_obj

E verificar o campo Local 
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_locaorga']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_locaorga_obj']
    
	sleep  2s
	Element Should Contain  ${LABEL}  Local
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_locaorga_obj


E verificar o campo Centro de Custo       
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_idcentcust']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_idcentcust_obj']
	
	sleep  2s
	Element Should Contain  ${LABEL}  Centro de Custo 
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_idcentcust_obj
	

E verificar o campo Tipo de Colaborador 
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_tipocola']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_tipocola_obj']
	
	Element Should Contain  ${LABEL}  Tipo de Colaborador
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_tipocola_obj
	
E verificar o campo Escala 
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_codiesca']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiesca_obj']
	
	Element Should Contain  ${LABEL}  Escala
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codiesca_obj

#VERIFY LABEL

Verificar a label Grupo de REP
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Grupo de REP')]
	Element Should Contain  ${LABEL}    Grupo de REP
 

Verificar a label Filtro
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Filtro')]
	Element Should Contain  ${LABEL}   Filtro



#FIELD
Selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"
	Select From List By Label  xpath=//*[@name="gruporepid"]  ${GRUPO_DE_REP}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="codifili"]  ${FILIAL}

Selecionar uma opção no campo Organograma "${ORGANOGRAMA}"
	Select From List By Label  xpath=//*[@name="codiorgaloca"]  ${ORGANOGRAMA}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="locaorga"]  ${LOCAL}

Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Select From List By Label  xpath=//*[@name="idcentcust"]  ${CENTRO_DE_CUSTO}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_DE_COLABORADOR}

Selecionar uma opção no campo Escala "${ESCALA}"
	Select From List By Label  xpath=//*[@name="codiesca"]  ${ESCALA}

