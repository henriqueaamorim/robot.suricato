*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Layout de Arquivo

# SCREEN
Acessar Tela Layout de Importação e Exportação - Consulta
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsLayoutImportacao
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable   Layout de Importação e Exportação
      ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
   ELSE
      ${SCREENNAME}  Set Variable   Layout de Importação e Exportação - Consulta
      ${ELEMENT}  Set Variable      xpath=//font[contains(text(),'${SCREENNAME}')]
   END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Layout de Importação e Exportação (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsLayoutImportacao
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable   Layout de Importação e Exportação
      ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME} ')]
   ELSE
      ${SCREENNAME}  Set Variable   Layout de Importação e Exportação - Consulta
      ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
   END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Nome do Layout "${NOME}"
  Select from list by label  xpath=//*[@name="nomelayoimpo_cond"]  ${NOME}

Preencher o campo Nome do Layout "${NLAY}"
  Input Text  xpath=//*[@name="nomelayoimpo"][@type="text"]  ${NLAY}


#VERIFY LABELS

Verificar a label Código do Layout
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	END
  Element Should Contain  ${LABEL}   Código do Layout

Verificar a label Nome do Layout
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
  Element Should Contain  ${LABEL}   Nome do Layout

Verificar a label Seção
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
  Element Should Contain  ${LABEL}   Seção


#VERIFY CAMPOS

Verificar a label: Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa


Verificar o campo: Nome do Layout	
	    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Layout')]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${CAMPO}      Set Variable  xpath=//input[@name='nomelayoimpo_autocomp']
  Element Attribute Value Should Be  ${CAMPO}   name   nomelayoimpo_autocomp
  ELSE
      ${CAMPO}      Set Variable  xpath=//input[@name='nomelayoimpo']
  Element Attribute Value Should Be  ${CAMPO}   name   nomelayoimpo
  END    
	Element Should Contain             ${LABEL}   Nome do Layout	
 	