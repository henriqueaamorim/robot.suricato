*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

# SCREEN
Acessar Tela Consulta de Reclamações
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsreclamacoes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reclamação
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE	
    ${SCREENNAME}  Set Variable  Consulta de Reclamações
	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Reclamações (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsreclamacoes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reclamação
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE	
    ${SCREENNAME}  Set Variable  Consulta de Reclamações
	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Placa do Veículo "${PLACA}"
  Input Text  xpath=//*[@name="placveic"][@type="text"]  ${PLACA}  

Selecionar uma opção no campo Data de Reclamação "${DATAR}" 
  Select from list by label  xpath=//*[@name="datarecoalar_cond"]  ${DATAR}

Preencher o campo Data da Reclamação "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datarecoalar_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datarecoalar_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datarecoalar_ano"][@type="text"]  ${ANO} 

Selecionar uma opção no campo Data do Ocorrido "${DATAO}"
  Select from list by label  xpath=//*[@name="dataocor_cond"]  ${DATAO}

Preencher o campo Data do Ocorrido "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataocor_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataocor_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataocor_ano"][@type="text"]  ${ANO}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descrecousua"][@type="text"]  ${DESC}  

Preencher o campo Nome do Condutor "${NOMEC}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOMEC}  

#VERIFY

Verificar a label Placa do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa do Veículo')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Placa do Veículo

Verificar a label Data/Hora da Reclamação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora da Reclamação')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora da Reclamação

Verificar a label Data/Hora do Ocorrido
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora do Ocorrido')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora do Ocorrido

Verificar a label Código do Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Condutor')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Código do Condutor

Verificar a label Nome do Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Condutor')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Nome do Condutor

Verificar a label Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Descrição

#VERIFY CAMPOS

Verificar o campo: Nome do Condutor	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Condutor')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome do Condutor	
 	Element Attribute Value Should Be  ${CAMPO}   name  nomepess

