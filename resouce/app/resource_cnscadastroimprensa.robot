*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso


# SCREEN
Acessar Tela: Consulta de Cadastro de Candidato
  ${OBJ}           Set Variable     SCN
  ${APPNAME}       Set Variable     cnscadastroimprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}    Set Variable     Consulta de Cadastro de Candidato
  ${ELEMENT}       Set Variable     //td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}    Set Variable     Consulta de Cadastro de Candidato
  ${ELEMENT}       Set Variable     xpath=
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Consulta de Cadastro de Candidato (Filtro)
  ${OBJ}           Set Variable     SCN
  ${APPNAME}       Set Variable     cnscadastroimprensa 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}    Set Variable     Consulta de Cadastro de Candidato
  ${ELEMENT}       Set Variable     //td[contains(text(),'${SCREENNAME}' )]
  ELSE
  ${SCREENNAME}    Set Variable     Consulta de Cadastro de Candidato
  ${ELEMENT}       Set Variable     xpath=
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD
Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MATRÍCULA}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NOME}


#VERIFY LABELS 

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Carteira de Identidade
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Carteira de Identidade')]
	Element Should Contain  ${LABEL}   Carteira de Identidade

Verificar a label Número do CPF
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do CPF')]
	Element Should Contain  ${LABEL}   Número do CPF

Verificar a label Email
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Email')]
	Element Should Contain  ${LABEL}   Email

Verificar a label Observações
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Observações')]
	Element Should Contain  ${LABEL}   Observações

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbpessoa_nomepess']
	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name  tbpessoa_nomepess

Verificar o campo: Carteira de Identidade	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Carteira de Identidade')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcandi_numecartiden']
	Element Should Contain             ${LABEL}   Carteira de Identidade	
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcandi_numecartiden

Verificar o campo: Número do CPF	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcandi_numecpf']
	Element Should Contain             ${LABEL}   Número do CPF	
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcandi_numecpf 

#FIELD
Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="idcand"][@type="text"]  ${MATRÍCULA}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

