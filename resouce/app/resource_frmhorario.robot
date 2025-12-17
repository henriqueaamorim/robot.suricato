*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# SCREEN
Acessar Tela Horários
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  frmhorario

  ${SCREENNAME}  Set Variable  Horários
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  5s 
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nmsc_iframe_frmhorario_1"

  ELSE
    Mudar Frame Aplicação "nm_iframe_aba_frmFaixasHorariasRefeicao_4"
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="deschora"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Turno "${TURNO}"
  Select from list by label  xpath=//*[@name="turnhora"]  ${TURNO}

Selecionar uma opção no campo Tipo de Jornada "${JORNADA}"
  Select from list by label  xpath=//*[@name="jornhora"]  ${JORNADA}
  
Preencher o campo Turno para Integração "${TURNO}"
  Input Text  xpath=//*[@name="turnoint"][@type="text"]  ${TURNO}

#VERIFY

Verificar o campo Descrição

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span[2]/input
	  ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
  ELSE
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	END
  Element Attribute Value Should Be  ${CAMPO}  name  deschora 
	Element Should Contain  ${LABEL}  Descrição  
	
Verificar o campo Turno
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/span[2]/span/span/span[1]/span/span[1]
  ELSE
	  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	END
  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_turnhora-container
	Element Should Contain  ${LABEL}  Turno  
	
Verificar o campo Tipo de Jornada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/span[2]/span/span/span[1]/span/span[1]
  ELSE
	  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_jornhora-container
	Element Should Contain  ${LABEL}  Tipo de Jornada  

Verificar o campo Turno para Integração
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/span[2]/input
  ELSE
	  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1] 
  END
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_turnoint 
	Element Should Contain  ${LABEL}  Turno para Integração


