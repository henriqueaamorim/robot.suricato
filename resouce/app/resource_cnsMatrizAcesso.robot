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
resource_report.Navegar no Relatório: Matriz de Acesso de Colaborador

# SCREEN
Acessar Tela Consulta Matriz Acesso - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Matriz Acesso
  ${APPNAME}     Set Variable  cnsMatrizAcesso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	ELSE
	  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END 

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Matriz Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Matriz Acesso
  ${APPNAME}     Set Variable  cnsMatrizAcesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Cód. Matriz
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input[2]
	
		Element Should Contain  ${LABEL}   Cód. Matriz
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_codimatraces_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	
		Element Should Contain  ${LABEL}   Cód. Matriz
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_codimatraces
	END


Verificar o campo Nome da Matriz
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[2]
	
		Element Should Contain  ${LABEL}   Nome da Matriz
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_nomematraces_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
		Element Should Contain  ${LABEL}   Nome da Matriz
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_nomematraces
	END


Verificar o campo Nível de Prioridade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input[2]
	
		Element Should Contain  ${LABEL}   Nível de Prioridade
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_niveprior_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
		Element Should Contain  ${LABEL}   Nível de Prioridade
 		Element Attribute Value Should Be  ${CAMPO}   name   mas_niveprior	
	END


Verificar o campo Dt. Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[3]/input
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input[3]
	END
	Element Should Contain  ${LABEL}   Dt. Início
 	Element Attribute Value Should Be  ${CAMPO1}   name   mas_datainic_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   mas_datainic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   mas_datainic_ano

Verificar o campo Dt. Fim
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[3]/input
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input[3]
	END
	Element Should Contain  ${LABEL}   Dt. Fim
 	Element Attribute Value Should Be  ${CAMPO1}   name   mas_datafina_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   mas_datafina_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   mas_datafina_ano

Verificar o campo Tipo de Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Tipo de Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tc_desctipocola

Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   emp_codiempr

Verificar o campo Filial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Filial
 	Element Attribute Value Should Be  ${CAMPO}   name   fili_codifili

Verificar o campo Centro de Custo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Centro de Custo
 	Element Attribute Value Should Be  ${CAMPO}   name   cc_nomecentcust

Verificar o campo Local Organograma
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Local Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeloca[]

Verificar o campo Cargo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Cargo
 	Element Attribute Value Should Be  ${CAMPO}   name   mca_codicarg

Verificar o campo Turno
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Turno
 	Element Attribute Value Should Be  ${CAMPO}   name   descturn

Verificar o campo Escala
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[13]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Escala
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeesca

Verificar o campo Grupo Feriados
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[14]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[14]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Grupo Feriados
 	Element Attribute Value Should Be  ${CAMPO}   name   perac_codiperm



#VERIFY

Verificar a label Cód. Matriz
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[1]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b
	END
	Element Should Contain  ${LABEL}   Cód. Matriz

Verificar a label Nome da Matriz
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[2]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Nome da Matriz

Verificar a label Nível de Prioridade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Nível de Prioridade

Verificar a label Dt. Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Dt. Início

Verificar a label Dt. Fim
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Dt. Fim

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label Filial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[8]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Filial

Verificar a label Centro de Custo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[9]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Centro de Custo

Verificar a label Local Organograma
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Local Organograma

Verificar a label Cargo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font/b
	Element Should Contain  ${LABEL}   Cargo

Verificar a label Turno
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font/b
	Element Should Contain  ${LABEL}   Turno

Verificar a label Escala
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[13]/font/b
	Element Should Contain  ${LABEL}   Escala

Verificar a label Grupo Feriados
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[14]/font/b
	Element Should Contain  ${LABEL}   Grupo Feriados



#FIELD
Preencher o campo Cód. Matriz "${CÓD._MATRIZ}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${CÓD._MATRIZ}

Preencher o campo Nome da Matriz "${NOME_DA_MATRIZ}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NOME_DA_MATRIZ}

Preencher o campo Nível de Prioridade "${NÍVEL_DE_PRIORIDADE}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NÍVEL_DE_PRIORIDADE}

Preencher o campo Dt. Início "${DT._INÍCIO}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DT._INÍCIO}

Preencher o campo Dt. Fim"${DT._FI}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DT._FI}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${TIPO_DE_COLABORADOR}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${EMPRESA}

Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${FILIAL}

Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${CENTRO_DE_CUSTO}

Selecionar uma opção no campo Local Organograma "${LOCAL_ORGANOGRAMA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${LOCAL_ORGANOGRAMA}

Selecionar uma opção no campo Cargo "${CARGO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${CARGO}

Selecionar uma opção no campo Turno "${TURNO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${TURNO}

Selecionar uma opção no campo Escala "${ESCALA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${ESCALA}

Selecionar uma opção no campo Grupo Feriados "${GRUPO_FERIADOS}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${GRUPO_FERIADOS}




#FIELD
Preencher o campo Cód. Matriz "${CÓD._MATRIZ}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${CÓD._MATRIZ}

Preencher o campo Nome da Matriz "${NOME_DA_MATRIZ}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NOME_DA_MATRIZ}

Preencher o campo Nível de Prioridade "${NÍVEL_DE_PRIORIDADE}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NÍVEL_DE_PRIORIDADE}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${ANO}

Preencher o campo Data Fim"${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${ANO}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${TIPO_DE_COLABORADOR}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${EMPRESA}

Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${FILIAL}

Selecionar uma opção no campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${CENTRO_DE_CUSTO}

Selecionar uma opção no campo Local Organograma "${LOCAL_ORGANOGRAMA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${LOCAL_ORGANOGRAMA}

Selecionar uma opção no campo Cargo "${CARGO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${CARGO}

Selecionar uma opção no campo Turno "${TURNO}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${TURNO}

Selecionar uma opção no campo Escala "${ESCALA}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${ESCALA}

Selecionar uma opção no campo Grupo Feriados "${GRUPO_FERIADOS}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${GRUPO_FERIADOS}

