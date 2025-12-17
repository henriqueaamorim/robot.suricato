*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

# SCREEN
Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Grupo de Visitantes (Inclusão)
  ${APPNAME}  Set Variable  frmagendagrupovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Agendamento de Grupo de Visitantes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Grupo de Visitantes (Atualização)
  ${APPNAME}  Set Variable  frmagendagrupovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Data Prevista da Visita "${DATA}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/input[1]  ${DATA}

Preencher o campo Hora Prevista da Visita "${HORA}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/input  ${HORA}

Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[2]/input[1]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Grupo de Visitantes "${GRUPO}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td[2]/input[1]  ${GRUPO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Quantidade de Visitantes no Grupo "${QUANT}"
  Input Text  name=quanvisisema   ${QUANT}

Selecionar uma opção no campo Tipo de Visita "${VISITA}"
  Select From List By Label  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[5]/td[2]/select  ${VISITA}

Preencher o campo Grupo de Acesso "${GRUPO}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[6]/td[2]/input[1]  ${GRUPO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[6]/td[1]

Preencher o campo Telefone do Grupo de Visitantes "${TELEFONE}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[7]/td[2]/input  ${TELEFONE}

Preencher o campo Data da Validade da Visita "${DATA}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[8]/td[2]/input[1]  ${DATA}

Preencher o campo Hora da Validade da Visita "${HORA}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[9]/td[2]/input  ${HORA}

Preencher o campo Observação "${OBS}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[10]/td[2]/textarea  ${OBS}

Preencher o campo Código do Autorizador "${COD}"
  Input Text  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[2]/td[2]/input[1]  ${COD}
    #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[2]/td[1]




#VERIFY

E verificar o campo Data Prevista da Visita 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Prevista da Visita  
	Element Attribute Value Should Be  ${CAMPO}  name  dataprev

E verificar o campo Hora Prevista da Visita 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora Prevista da Visita  
	Element Attribute Value Should Be  ${CAMPO}  name  horaprev

E verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab 

E verificar o campo Empresa do Visitado 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}  Empresa do Visitado 
	

E verificar o campo Tipo do Visitado 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}  Tipo do Visitado


E verificar o campo Matrícula do Visitado 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}  Matrícula do Visitado


E verificar o campo Nome do Visitado 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Visitado


E verificar o campo Grupo de Visitantes 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Grupo de Visitantes 
	Element Attribute Value Should Be  ${CAMPO}  name  grupvisi

E verificar o campo Código Empresa Terceira 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Código Empresa Terceira 
	Element Attribute Value Should Be  ${CAMPO}  name  codiemprcont

E verificar o campo Quantidade de Visitantes no Grupo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Quantidade de Visitantes no Grupo
	Element Attribute Value Should Be  ${CAMPO}  name  quanvisisema

E verificar o campo Tipo de Visita  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tipo de Visita 
	Element Attribute Value Should Be  ${CAMPO}  name  tipovisi

E verificar o campo Grupo de Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Grupo de Acesso
	Element Attribute Value Should Be  ${CAMPO}  name  codiperm

E verificar o campo Telefone do Grupo de Visitantes 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Telefone do Grupo de Visitantes
	Element Attribute Value Should Be  ${CAMPO}  name  numetelegrup

E verificar o campo Data da Validade da Visita 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data da Validade da Visita
	Element Attribute Value Should Be  ${CAMPO}  name  datavali

E verificar o campo Hora da Validade da Visita 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora da Validade da Visita
	Element Attribute Value Should Be  ${CAMPO}  name  horavaliauto

E verificar o campo Observação 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Observação
	Element Attribute Value Should Be  ${CAMPO}  name  obsevisi

E verificar o campo Código do Autorizador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Autorizador  
	Element Attribute Value Should Be  ${CAMPO}  name  idcolaautolibe

E verificar o campo Empresa do Autorizador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Empresa do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  name  padnumempaut

E verificar o campo Tipo do Autorizador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tipo do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  name  padtipcolaut

E verificar o campo Matrícula do Autorizador  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Matrícula do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  name  padnumcadaut

E verificar o campo Nome do Autorizador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  name  padnomeaut

#FIELD

Preencher o campo Grupo Visitante "${GRUPO}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${GRUPO}
 
Preencher o campo Grupo de Visitantes "${GRUPO}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${GRUPO}
 
Preencher o campo Quantidade de Visitantes no Grupo "${QUANTIDADE}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${QUANTIDADE}
 
Selecionar uma opção no campo Tipo de Visita "${TIPO}"
  Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${TIPO}
 
Preencher o campo Grupo de Acesso "${GRUPO}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${GRUPO}
 
Preencher o campo Telefone do Grupo de Visitantes "${TELEFONE}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${TELEFONE}
 
Preencher o campo Data da Validade da Visita "${DATA}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DATA}
 
Preencher o campo Hora da Validade da Visita "${HORA}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${HORA}
 
Preencher o campo Observação "${OBSERVAÇÃO}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${OBSERVAÇÃO}
 
Preencher o campo Código do Autorizador "${CÓDIGO}"
  Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${CÓDIGO}
 