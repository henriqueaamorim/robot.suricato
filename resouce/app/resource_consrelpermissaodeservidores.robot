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
resource_report.Navegar no Relatório: Grupo de Acesso de Colaboradores

# SCREEN
Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consrelpermissaodeservidores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Grupo de Acesso de Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Acesso de Colaboradores
  ${APPNAME}     Set Variable  consrelpermissaodeservidores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo 
	Element Should Contain  ${LABEL}   Colaborador 
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Dias Normais
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Dias
	Element Should Contain  ${LABEL}   Normais
 	Element Attribute Value Should Be  ${CAMPO}   name   codiperm[]

Verificar o campo Grupo de Acesso Sábado
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Grupo de
	Element Should Contain  ${LABEL}   Acesso Sábado
 	Element Attribute Value Should Be  ${CAMPO}   name   permacessaba[]

Verificar o campo Grupo de Acesso Domingo
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Grupo de
	Element Should Contain  ${LABEL}   Acesso Domingo
 	Element Attribute Value Should Be  ${CAMPO}   name   permacesdomi[]

Verificar o campo Grupo de Acesso Feriado
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Grupo de
	Element Should Contain  ${LABEL}   Acesso Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name   permacesferi[]

Verificar o campo Grupo de Acesso Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Grupo de
	Element Should Contain  ${LABEL}   Acesso Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   permacesvisi[]

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario

Verificar o campo Estrutura
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Estrutura
 	Element Attribute Value Should Be  ${CAMPO}   name   codiorgaloca

Verificar o campo Local
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Local
 	Element Attribute Value Should Be  ${CAMPO}   name   locaorga



#VERIFY

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Local

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Situação

Verificar a label Desc.Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Desc.Situação

Verificar a label Dias Normais
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[6]/font/b/a/font
	Element Should Contain  ${LABEL}   Dias 
	Element Should Contain  ${LABEL}   Normais

Verificar a label Grupo de Acesso Sábado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[7]/font/b/a/font
	Element Should Contain  ${LABEL}   Grupo de 
	Element Should Contain  ${LABEL}   Acesso Sábado

Verificar a label Grupo de Acesso Domingo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[8]/font/b/a/font
	Element Should Contain  ${LABEL}   Grupo de 
	Element Should Contain  ${LABEL}   Acesso Domingo

Verificar a label Grupo de Acesso Feriado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[9]/font/b/a/font
	Element Should Contain  ${LABEL}   Grupo de 
	Element Should Contain  ${LABEL}   Acesso Feriado



#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO_COLABORADOR}

Preencher o campo Matrícula "${MATRÝCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÝCULA}

Selecionar uma opção no campo Dias Normais "${DIAS_NORMAIS}"
	Select From List By Label  xpath=//*[@name="codiperm[]"]  ${DIAS_NORMAIS}

Selecionar uma opção no campo Grupo de Acesso Sábado "${GRUPO_DE_ACESSO_SÝBADO}"
	Select From List By Label  xpath=//*[@name="permacessaba[]"]  ${GRUPO_DE_ACESSO_SÝBADO}

Selecionar uma opção no campo Grupo de Acesso Domingo "${GRUPO_DE_ACESSO_DOMINGO}"
	Select From List By Label  xpath=//*[@name="permacesdomi[]"]  ${GRUPO_DE_ACESSO_DOMINGO}

Selecionar uma opção no campo Grupo de Acesso Feriado "${GRUPO_DE_ACESSO_FERIADO}"
	Select From List By Label  xpath=//*[@name="permacesferi[]"]  ${GRUPO_DE_ACESSO_FERIADO}

Selecionar uma opção no campo Grupo de Acesso Visitante "${GRUPO_DE_ACESSO_VISITANTE}"
	Select From List By Label  xpath=//*[@name="permacesvisi[]"]  ${GRUPO_DE_ACESSO_VISITANTE}

Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÝRIO}"
	Select From List By Label  xpath=//*[@name="filtroexibeusuario"]  ${EXIBIR_USUÝRIO}

Selecionar uma opção no campo Estrutura "${ESTRUTURA}"
	Select From List By Label  xpath=//*[@name="codiorgaloca"]  ${ESTRUTURA}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="locaorga"]  ${LOCAL}

