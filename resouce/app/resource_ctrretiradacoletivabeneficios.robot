*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Consumo

# SCREEN
Acessar Tela Consumo de Benefícios
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrretiradacoletivabeneficios
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Consumo de Benefícios
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consumo de Benefícios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


  

#FIELD
Selecionar Empresa ${EMPRESA}
  Select From List By Label  xpath=//*[@name="empresa"]  ${EMPRESA}

Selecionar Benefício ${BENEFICIO}
  Select From List By Label  xpath=//*[@name="beneficio"]   ${BENEFICIO}


#VERIFY 

E verificar o campo Empresa      
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_empresa']
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_empresa_obj']
  ELSE  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}   Empresa


E verificar o campo Benefício 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_beneficio']
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_beneficio_obj']
  ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}   Benefício
	