*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

# SCREEN
Acessar Tela Cargos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cargos (Atualização)
  ${APPNAME}  Set Variable  frmEmpresasCargos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  3s 
    Mudar Frame Aplicação "nmsc_iframe_liga_frmEmpresasCargos"
  ELSE
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nmsc_iframe_frmEmpresasCargos_3"
    
    Wait Until Element is Visible  ${ELEMENT} 
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END


  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cargos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cargos (Inclusão)
  ${APPNAME}  Set Variable  frmEmpresasCargos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmEmpresasCargos_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON

#FIELD

Selecionar um Cargo
  Click Element  xpath=//input[@onclick="if (this.checked) {sc_quant_excl++; } else {sc_quant_excl--; }"]

Preencher o campo Alteração "${ALTERACAO}"
  Input Text  xpath=//*[@name="dataalte_1"] | //*[@name="dataalte1"]  ${ALTERACAO}

Preencher o campo Nova Data "${DATA}"
  Input Text  xpath=//*[@name="dataltnova1"]|//*[@name="dataltnova_1"]  ${DATA}

Selecionar uma opção no campo Cargos "${CARGO}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Select From List By Label  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/span/select  ${CARGO}
  ELSE
    Select From List By Label  xpath=//*[@name="codiestrcarg1"]  ${CARGO}
  END

#VERIFY

Verificar a label Alteração *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Alteração *

Verificar o campo Nova Data
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]/div[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/span/input

	Element Should Contain             ${LABEL}   Nova Data
 	Element Attribute Value Should Be  ${CAMPO}   name   dataltnova_1

Verificar o campo Cargos *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Cargos *
 	Element Attribute Value Should Be  ${CAMPO}   name   codiestrcarg_1
