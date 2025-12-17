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
Acessar Tela: Autorização de Acesso de Candidato (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizacaoAcessoImprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Autorização de Acesso de Candidato
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Agendamento de Candidato
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Autorização de Acesso de Candidato (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsAutorizacaoAcessoImprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Autorização de Acesso de Candidato
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Agendamento de Candidato
    ${ELEMENT}     Set Variable    xpath=//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#acessar o menu: Registro | Liberação de Nível
Acessar Tela: Consulta de Histórico de Liberação de Nível
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizacaoAcessoImprensa
  ${SCREENNAME}  Set Variable    Consulta de Histórico de Liberação de Nível
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Data do Agendamento "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataagencand_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataagencand_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataagencand_ano"][@type="text"]  ${ANO}

Preencher o campo Hora do Agendamento "${HORA}:${MIN}"
  Input Text  xpath=//*[@name="horaagencand_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horaagencand_min"][@type="text"]  ${MIN}

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="idcand"][@type="text"]  ${COD}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}


#VERIFY LABELS na Tela: Autorização de Acesso de Candidato (Consulta)

Verificar a label: Nome na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}  Nome

Verificar a label: CPF na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'CPF')]
	Element Should Contain  ${LABEL}  CPF

Verificar a label: Carteira de Identidade na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Carteira de Identidade')]
	Element Should Contain  ${LABEL}   Carteira de Identidade

Verificar a label: Data na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data')]
	Element Should Contain  ${LABEL}  Data    

Verificar a label: Hora na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora')]
	Element Should Contain  ${LABEL}  Hora  

Verificar a label: Motivo na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo')]
	Element Should Contain  ${LABEL}  Motivo  

Verificar a label: Data do Agendamento na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data do Agendamento')]
	Element Should Contain  ${LABEL}  Data do Agendamento  

Verificar a label: Hora do Agendamento na tela: Autorização de Acesso de Candidato (Consulta)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora do Agendamento')]
	Element Should Contain  ${LABEL}    Hora do Agendamento         


#VERIFY CAMPOS na Tela: Autorização de Acesso de Candidato (Filtro)

Verificar o campo: Nome na tela: Autorização de Acesso de Candidato (Filtro)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='p_nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   p_nomepess

Verificar o campo: CPF na tela: Autorização de Acesso de Candidato (Filtro)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='c_numecpf']
	Element Should Contain             ${LABEL}   CPF
 	Element Attribute Value Should Be  ${CAMPO}   name  c_numecpf 

Verificar o campo: Carteira de Identidade na tela: Autorização de Acesso de Candidato (Filtro)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Carteira de Identidade')]
	${CAMPO}      Set Variable  xpath=//input[@name='c_numecartiden']
	Element Should Contain             ${LABEL}   Carteira de Identidade	
 	Element Attribute Value Should Be  ${CAMPO}   name  c_numecartiden  

Verificar o campo: Data na tela: Autorização de Acesso de Candidato (Filtro)
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Data')]
  ${CAMPO1}      Set Variable  xpath=//input[@name='ac_dataauto_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='ac_dataauto_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='ac_dataauto_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='ac_dataauto_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='ac_dataauto_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='ac_dataauto_input_2_ano']
  Element Should Contain             ${LABEL}    Data 
  Element Attribute Value Should Be  ${CAMPO1}   name   ac_dataauto_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   ac_dataauto_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   ac_dataauto_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   ac_dataauto_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   ac_dataauto_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   ac_dataauto_input_2_ano   


#VERIFY CAMPOS na Tela: Consulta de Histórico de Liberação de Nível

Verificar a label Pesquisa na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa
	

Verificar o campo: Empresa na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain    ${LABEL}   Empresa
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single


Verificar o campo: Tipo do Colaborador na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain   ${LABEL}   Tipo do Colaborador
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Nome na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain   ${LABEL}   Nome
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo: Apelido na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Apelido')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain   ${LABEL}   Apelido
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single


Verificar o campo: Matrícula na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name    codimatr

Verificar o campo: PIS na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'PIS')]
	${CAMPO}      Set Variable  xpath=//input[@name='numepis']
	Element Should Contain             ${LABEL}   PIS 
 	Element Attribute Value Should Be  ${CAMPO}   name  numepis 

Verificar o campo: CPF na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='numecpf']
	Element Should Contain             ${LABEL}   CPF
 	Element Attribute Value Should Be  ${CAMPO}   name   numecpf

Verificar o campo: Ramal na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Ramal')]
	${CAMPO}      Set Variable  xpath=//input[@name='numram']
	Element Should Contain             ${LABEL}   Ramal
 	Element Attribute Value Should Be  ${CAMPO}   name   numram

Verificar o campo: Chave Externa na tela: Consulta de Histórico de Liberação de Nível
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Chave Externa')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']
	Element Should Contain             ${LABEL}   Chave Externa	
 	Element Attribute Value Should Be  ${CAMPO}   name    external_key               