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
Acessar Tela Organogramas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Organograma (Atualização)
  ${APPNAME}     Set Variable  frmEmpresasOrganograma
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  3s
    Mudar Frame Aplicação "nmsc_iframe_liga_frmEmpresasOrganograma"
  ELSE
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nmsc_iframe_frmEmpresasOrganograma_2"

    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Organogramas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Organograma (Inclusão)
  ${APPNAME}     Set Variable  frmEmpresasOrganograma
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmEmpresasOrganograma_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Alteração "${ALTERACAO}"
  Sleep  2
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  1s
    Input Text  xpath=//*[@name="dataalte_1"]  ${ALTERACAO}
  ELSE
    Input Text  xpath=//*[@name="dataalte1"]  ${ALTERACAO}
  END

Preencher o campo Nova Data "${DATA}"
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Input Text  xpath=//*[@name="dataltnova_1"]  ${DATA}
  ELSE
    Input Text  xpath=//*[@name="dataltnova1"]  ${DATA}
  END

Selecionar uma opção no campo Organograma "${ORG}"
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Select From List By Label  xpath=//*[@name="codiorgaloca_1"]  ${ORG}
  ELSE
    Select From List By Label  xpath=//*[@name="codiorgaloca1"]  ${ORG}
  END

Clicar na checkbox do registro a ser excluido "${NUM}"
    Click Element  xpath=//input[@name="sc_check_vert[${NUM}]"]
#VERIFY

Verificar o campo Alteração
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[2]
	Element Should Contain             ${LABEL}   Alteração

Verificar o campo Nova Data
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/span/input

	Element Should Contain             ${LABEL}   Nova Data
 	Element Attribute Value Should Be  ${CAMPO}   name   dataltnova_1

Verificar o campo Organograma
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   codiorgaloca_1

Clicar No Botão: Novo 
  
  ${NOME}  Set Variable  Abrir Um Novo Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_b_new_top']|//*[@id='sc_b_new_t']|//*[@id='sc_btnNovo_top']|//*[@id='sc_btnNew_top']|//*[@id="sc_btnNovaEntrada_bot"]|//*[@id="sc_btn_novo_top"] 
  ${FRAME}   Set Variable  xpath=//*[@id="nmsc_iframe_liga_frmEmpresasOrganograma"]
  


  Mudar Frame Aplicação "${FRAME}" 
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar no botão Organograma
  Sleep  3s
  Click Element  xpath=//*[@id="link_11"]