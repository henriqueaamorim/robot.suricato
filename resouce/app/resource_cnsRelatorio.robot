*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

# SCREEN
Acessar Tela Impressão de Relatório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Impressão de Relatório
  ${APPNAME}     Set Variable  cnsRelatorio
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Impressão de Relatório (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Impressão de Relatório
  ${APPNAME}     Set Variable  cnsRelatorio
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



# BUTTON
resource_btn.Clicar no botão Pesquisar Registros
resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Clicar No Campo Ver
  ${BTN_VER}  Set Variable  xpath=//*[@id="apl_cnsRelatorio#?#1"]/tbody/tr[2]/td[4]/font/a/img | //*[@id="id_sc_field_btnview_1"]/a/img
  Wait Until Element is Visible   ${BTN_VER}
  Click Element    ${BTN_VER}

# USADO NO RESOURCE_REPORT
Setar Campo Descrição "${RELATORIO}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${CAMPO}  Set Variable  xpath=//*[@name="descrela_autocomp"]
  ELSE
    ${CAMPO}  Set Variable  xpath=//*[@name="descrela"]
  END

  Wait Until Element is Visible   ${CAMPO}
  Input Text  ${CAMPO}  ${RELATORIO}

# USADO SOMENTE NO APP consrelescalaporrevesa
Clicar No Campo Ver - Segunda Opção
  ${BTN_VER}  Set Variable  xpath=//*[@id="apl_cnsRelatorio#?#1"]/tbody/tr[3]/td[4]/font/a/img
  Wait Until Element is Visible   ${BTN_VER}
  Click Element    ${BTN_VER}



#VERIFY LABEL

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label: Categoria
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Categoria')]
	Element Should Contain  ${LABEL}   Categoria    

Verificar a label Ver
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Ver')]
  Element Should Contain  ${LABEL}   Ver



Verificar o campo Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Descrição')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='descrela']
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  END
  	Element Should Contain  ${LABEL}   Descrição
 	  Element Attribute Value Should Be  ${CAMPO}   name   descrela
  


Verificar o campo Categoria
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Categoria')]
	  ${CAMPO}   Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
  	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single  
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
		Element Attribute Value Should Be  ${CAMPO}   name   idtiporelat
  END
  Element Should Contain  ${LABEL}   Categoria
