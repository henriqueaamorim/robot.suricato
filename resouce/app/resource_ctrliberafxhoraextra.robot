*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Coletiva

# SCREEN
Acessar Tela Liberação de Faixa Horária Coletiva
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Liberação de Faixa Horária Coletiva
  ${APPNAME}  Set Variable  ctrliberafxhoraextra
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY

E verificar o campo Data Inicial   
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_data_inicial']
	${CAMPO}  Set Variable  xpath=//input[@name='data_inicial']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	END
	Element Should Contain  ${LABEL}  Data Inicial
	Element Attribute Value Should Be  ${CAMPO}  name  data_inicial

E verificar o campo Data Final  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_data_final']
	${CAMPO}  Set Variable  xpath=//input[@name='data_final']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	END
	Element Should Contain  ${LABEL}  Data Final
	Element Attribute Value Should Be  ${CAMPO}  name  data_final

E verificar o campo Hora Inicial  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_horainicsc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@name='horainicsc9bugfixed']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}  Hora Inicial  
	Element Attribute Value Should Be  ${CAMPO}  name  horainicsc9bugfixed

E verificar o campo Hora Final  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_horafimsc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@name='horafimsc9bugfixed']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}  Hora Final  
	Element Attribute Value Should Be  ${CAMPO}  name  horafimsc9bugfixed

E verificar o campo: Colaboradores selecionados	 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_retornarcolaboradoresvalor']
	ELSE
	${LABEL}  Set Variable  xpath=
	END
	Element Should Contain  ${LABEL}  Colaboradores selecionados	 

E verificar o campo Centro de Custo     
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}  Centro de Custo
	Element Attribute Value Should Be  ${CAMPO}  name  idcentcust

E verificar o campo Organograma   
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	Element Should Contain  ${LABEL}  Organograma
	Element Attribute Value Should Be  ${CAMPO}  name  codiorgaloca 

E verificar o campo Local  
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	Element Should Contain  ${LABEL}  Local
	Element Attribute Value Should Be  ${CAMPO}  name  local

E verificar o campo Empresa     
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  name  empresa 

E verificar o campo Tipo de Colaborador  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	Element Should Contain  ${LABEL}  Tipo de Colaborador
	Element Attribute Value Should Be  ${CAMPO}  name  tipocola 

E verificar o campo Matricula 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	Element Should Contain  ${LABEL}  Matricula
	Element Attribute Value Should Be  ${CAMPO}  name  matricula

E verificar o campo Crachá(s)
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	Element Should Contain  ${LABEL}  Crachá(s) 
	Element Attribute Value Should Be  ${CAMPO}  name  cracha

E verificar o campo Chave Externa  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	Element Should Contain  ${LABEL}  Chave Externa
	Element Attribute Value Should Be  ${CAMPO}  name  external_key


#FIELD
Preencher o campo data Inicial "${DATA_INICIAL}"
	Input Text  xpath=//*[@name="data_inicial"][@type="text"]  ${DATA_INICIAL}

Preencher o campo data Final "${DATA_FINAL}"
	Input Text  xpath=//*[@name="data_final"][@type="text"]  ${DATA_FINAL}

Preencher o campo hora Inicial "${HORA_INICIAL}"
	Input Text  xpath=//*[@name="horainic"][@type="text"]  ${HORA_INICIAL}

Preencher o campo hora Final "${HORA_FINAL}"
	Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA_FINAL}

Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Select From List By Label  xpath=//*[@name="idcentcust"]  ${CENTRO_DE_CUSTO}

Selecionar uma opção no campo Organograma "${ORGANOGRAMA}"
	Select From List By Label  xpath=//*[@name="codiorgaloca"]  ${ORGANOGRAMA}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="local"]  ${LOCAL}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="empresa"]  ${EMPRESA}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_DE_COLABORADOR}

Preencher o campo Matricula "${MATRICULA}"
	Input Text  xpath=//*[@name="matricula"]  ${MATRICULA}

Preencher o campo Crachá(s) "${CRACHÁS}"
	Input Text  xpath=//*[@name="cracha"]  ${CRACHÁS}

Preencher o campo Chave Externa "${CHAVE_EXTERNA}"
	Input Text  xpath=//*[@name="external_key"]  ${CHAVE_EXTERNA}

