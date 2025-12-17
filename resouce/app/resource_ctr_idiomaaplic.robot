*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Idioma

# SCREEN
Acessar Tela Idioma
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Idioma
  ${APPNAME}  Set Variable  ctr_idiomaaplic
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Selecionar Aplicação
  Select From List By Label  name=slc_aplicacao  Aba Agendamento de Uso da Frota ( abaagendusofrota )



#VERIFY

Verificar a label Idioma
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//span[@id='id_label_slc_idioma']
    ${CAMPO}   Set Variable  xpath=//span[@id='select2-id_sc_field_slc_idioma-container']
  Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_slc_idioma-container  
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/table/tbody/tr/td[1]
	END
  Element Should Contain  ${LABEL}   Idioma

Verificar o campo Aplicação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//span[@id='id_label_slc_aplicacao']
    ${CAMPO}   Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_slc_aplicacao_obj']
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_slc_aplicacao_obj
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[3]/span/select
	Element Attribute Value Should Be  ${CAMPO}   name   slc_aplicacao
  END
	Element Should Contain  ${LABEL}   Aplicação
 	



#FIELD
Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
	Select From List By Label  xpath=//*[@id="slc_aplicacao"]  ${APLICAÇÃO}

