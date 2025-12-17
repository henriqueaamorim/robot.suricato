*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Colaborador por Filial

# SCREEN
Acessar Tela Filtro de Colaboradores por Filial - Filtro
   ${OBJ}            Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}    Set Variable  Empregado
	${ELEMENT}       Set Variable   xpath=//td[contains(text(),'Terceiro')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores por Filial
  END
  ${APPNAME}  Set Variable  consColaboradoresporFilial
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Terceiro')]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Colaboradores por Filial
  ${OBJ}            Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}    Set Variable  Empregado
	${ELEMENT}       Set Variable   xpath=//td[contains(text(),'Empregado')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores por Filial
  END
  ${APPNAME}  Set Variable  consColaboradoresporFilial
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#VERIFY CAMPOS (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
    
	sleep  2s
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}   Set Variable  xpath=//input[@name='tbcolab_codimatr']
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo Nome
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}   Set Variable  xpath=//input[@name='tbpessoa_nomepess']
	
	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   tbpessoa_nomepess

Verificar o campo Número do PIS
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Número do PIS
 	Element Attribute Value Should Be  ${CAMPO}   name   numepis

Verificar o campo Razão Social
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Razão Social
 	Element Attribute Value Should Be  ${CAMPO}   name   razasoci[]

Verificar o campo Organograma
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   codiorgaloca

Verificar o campo Local
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Local
 	Element Attribute Value Should Be  ${CAMPO}   name   locaorga

Verificar o campo Centro Custo
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Centro Custo
 	Element Attribute Value Should Be  ${CAMPO}   name   nomecentcust

Verificar o campo Data Admissão
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[3]
	
	Element Should Contain  ${LABEL}   Data Admissão
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataadmi_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataadmi_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataadmi_ano

Verificar o campo Situação
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}   Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	
	sleep  2s
	Element Should Contain  ${LABEL}   Empresa


Verificar o campo Código Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Código Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar o campo Apelido
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Apelido')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_apelcola']

	Element Should Contain             ${LABEL}   Apelido
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_apelcola

Verificar o campo PIS
	${LABEL}      Set Variable  xpath=//td[contains(text(),'PIS')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_numepis']

	Element Should Contain             ${LABEL}   PIS
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_numepis

Verificar o campo Número do CPF	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_numecpf']

	Element Should Contain             ${LABEL}   Número do CPF	
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_numecpf	

Verificar o campo Ramal
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Ramal')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeramal']

	Element Should Contain             ${LABEL}   Ramal
 	Element Attribute Value Should Be  ${CAMPO}   name   numeramal

Verificar o campo External Key	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'External Key')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']

	Element Should Contain             ${LABEL}   External Key
 	Element Attribute Value Should Be  ${CAMPO}   name   external_key	

Verificar o campo Tipo de Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Tipo de Colaborador
  

#VERIFY

Verificar a label External Key
	${LABEL}   Set Variable  xpath=//div[contains(text(),'External Key')]

	Element Should Contain  ${LABEL}   External Key

Verificar a label Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b
	END
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	END
	sleep  2s
	Element Should Contain  ${LABEL}   Nome

Verificar a label Número do PIS
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Número do PIS

Verificar a label Organograma
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Organograma

Verificar a label Local
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Local

Verificar a label Local do Organograma
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Local do Organograma

Verificar a label Centro Custo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Centro Custo

Verificar a label Data Admissão
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[8]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Data Admissão

Verificar a label Código Situação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[9]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Código Situação

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[10]
	Element Should Contain  ${LABEL}   Situação

Verificar a label Razão Social
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[11]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font/b
	END
	Element Should Contain  ${LABEL}   Razão Social

Verificar a label Código Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[12]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font/b
	END
	Element Should Contain  ${LABEL}   Código Empresa

Verificar a label Código do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Colaborador')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[13]/font/b
	END
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[14]/font/b
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Colaborador')]

	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label PIS
	${LABEL}   Set Variable  xpath=//div[contains(text(),'PIS')]

	Element Should Contain  ${LABEL}   PIS

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]

	Element Should Contain  ${LABEL}   Crachá

Verificar a label Utiliza Controle Biométrico
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Utiliza Controle Biométrico')]

	Element Should Contain  ${LABEL}   Utiliza Controle Biométrico

Verificar a label Número do CPF
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do CPF')]
    sleep  2s
	Element Should Contain  ${LABEL}   	Número do CPF







