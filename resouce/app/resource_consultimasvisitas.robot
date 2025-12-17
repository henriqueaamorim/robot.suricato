*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

# SCREEN
Acessar Tela Consulta de Últimas Visitas (Filtro)
#Acessar tela: Última Visita (Filtro) (246)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable    consultimasvisitas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Última Visita (Filtro)
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable   Consulta de Últimas Visitas (Filtro)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Últimas Visitas
#Acessar Tela: Última Visita (246)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable    consultimasvisitas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Última Visita	
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable   Consulta de Últimas Visitas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be   ${ELEMENT}   ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
    ELSE
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa
    END

Verificar o campo Nome
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}   Set Variable  xpath=//input[@name='nome']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
    END
	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nome

Verificar o campo Empresa Terceira
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Empresa Terceira')]
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Empresa Terceira


Verificar o campo Portaria
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Portaria')]
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Portaria
 	

Verificar o campo Tipo do Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@id='SC_tipodocuvisi_label']
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Tipo do 
	Element Should Contain  ${LABEL}   Documento

Verificar o campo Número do Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@id='SC_numedocuvisi_label']
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[4]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Número do 
	Element Should Contain  ${LABEL}   Documento
 	

Verificar o campo Data da Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}    Set Variable  xpath=//td[@id='SC_dataentr_label']
	${CAMPO1}   Set Variable  xpath=//input[@name='dataentr_dia']
	${CAMPO2}   Set Variable  xpath=//input[@name='dataentr_mes']
	${CAMPO3}   Set Variable  xpath=//input[@name='dataentr_ano']
	${CAMPO4}   Set Variable  xpath=//input[@name='dataentr_input_2_dia']
	${CAMPO5}   Set Variable  xpath=//input[@name='dataentr_input_2_mes']
	${CAMPO6}   Set Variable  xpath=//input[@name='dataentr_input_2_ano']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO1}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   	Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data da Entrada
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataentr_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataentr_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataentr_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataentr_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataentr_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataentr_input_2_ano
	

Verificar o campo Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@id='SC_icard_label']
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[5]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Crachá


Verificar o campo Placa do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@id='SC_placveic_label']
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[6]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Placa do
	Element Should Contain  ${LABEL}   Veículo
 	



#VERIFY LABELS

Verificar a label Opções 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Opções')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b
	END
	Element Should Contain  ${LABEL}   Opções 

Verificar a label Nome do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Visitante')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Nome do Visitante

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_tipodocuvisi_label']
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Tipo do 
	Element Should Contain  ${LABEL}   Documento

Verificar a label Número do Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_numedocuvisi_label']
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Número do 
	Element Should Contain  ${LABEL}   Documento

Verificar a label Portaria
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Portaria')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Portaria

Verificar a label Data/Hora da Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_datahoraentrada_label']
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora 
	Element Should Contain  ${LABEL}   da Entrada

Verificar a label Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Placa do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_placveic_label']
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Placa do 
	Element Should Contain  ${LABEL}   Veículo



#FIELD
Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nome"][@type="text"]  ${NOME}

Preencher o campo Empresa Terceira "${EMPRESA_TERCEIRA}"
	Input Text  xpath=//*[@name="nomeemprcont"][@type="text"]  ${EMPRESA_TERCEIRA}

Selecionar uma opção no campo Portaria "${PORTARIA}"
	Select From List By Label  xpath=//*[@name="codiport"]  ${PORTARIA}

Selecionar uma opção no campo Tipo do Documento "${TIPO_DO_DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tipodocuvisi"]  ${TIPO_DO_DOCUMENTO}

Preencher o campo Número do Documento "${NÚMERO_DO_DOCUMENTO}"
	Input Text  xpath=//*[@name="numedocuvisi"][@type="text"]  ${NÚMERO_DO_DOCUMENTO}

Preencher o campo Data da Entrada Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentr_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataentr_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataentr_ano"][@type="text"]  ${ANO}

Preencher o campo Data da Entrada Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentr_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataentr_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataentr_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Crachá "${CRACHÝ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÝ}

Preencher o campo Placa do Veículo "${PLACA_DO_VEÝCULO}"
	Input Text  xpath=//*[@name="placveic"][@type="text"]  ${PLACA_DO_VEÝCULO}

