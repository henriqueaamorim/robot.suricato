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
resource_report.Navegar no Relatório: Relatório de Perfil de Acesso Colaboradores

# SCREEN
Acessar Tela Relatório de Perfil de Acesso Colaboradores - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Perfil de Acesso Colaboradores
  ${APPNAME}     Set Variable  consrelPerfilAcesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório de Perfil de Acesso Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Perfil de Acesso Colaboradores
  ${APPNAME}     Set Variable  consrelPerfilAcesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


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
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr[]

Verificar o campo Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Anti Dupla
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Anti
	Element Should Contain  ${LABEL}   Dupla
 	Element Attribute Value Should Be  ${CAMPO}   name   contantidupl

Verificar o campo Verifica Afastamento
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Verifica Afastamento
 	Element Attribute Value Should Be  ${CAMPO}   name   veriafas



#VERIFY

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a segunda label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font
	Element Should Contain  ${LABEL}   Tipo Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Anti Dupla
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font
	Element Should Contain  ${LABEL}   Anti
	Element Should Contain  ${LABEL}   Dupla

Verificar a label Faixa Horária
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Faixa
	Element Should Contain  ${LABEL}   Horária

Verificar a label Verifica Afastamento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font
	Element Should Contain  ${LABEL}   Verifica Afastamento



#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO_COLABORADOR}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}

Selecionar uma opção no campo Anti Dupla "${ANTI_DUPLA}"
	Select From List By Label  xpath=//*[@name="contantidupl"]  ${ANTI_DUPLA}

Selecionar uma opção no campo Verifica Afastamento "${VERIFICA_AFASTAMENTO}"
	Select From List By Label  xpath=//*[@name="veriafas"]  ${VERIFICA_AFASTAMENTO}

