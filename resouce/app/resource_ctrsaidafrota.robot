*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

# SCREEN
Acessar Tela Entrega de Veículo - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrega de Veículo
  ${APPNAME}     Set Variable  ctrsaidafrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Veículo "${VEICULO}"
  Input Text    xpath=//*[@id="id_read_off_idveic"]/input    ${VEICULO}
  Sleep  1s
Preencher o campo Portaria de Saída "${PORTARIA}"
  Input Text    xpath=//*[@id="id_read_off_portsaid"]/input   ${PORTARIA}
  Sleep  1s
Preencher o campo Código na área Condutor "${CODIGO}"
  Input Text    xpath=//*[@id="id_read_off_idcodicond"]/input   ${CODIGO}
  #Necessario clicar fora apra salvar o registro
  Click Element    xpath=//*[@id="id_label_motiusoveic"]

Preencher o campo Código na área Aprovador "${CODIGO}"
  Input Text    xpath=//*[@id="id_read_off_idcolaautolibe"]/input   ${CODIGO}
  #Necessario clicar fora apra salvar o registro
  Click Element    xpath=//*[@id="id_label_motiusoveic"]

Preencher o campo Código na área Vigilante da Saída "${CODIGO}"
  Input Text    xpath=//*[@id="id_read_off_idvigisaid"]/input   ${CODIGO}
  #Necessario clicar fora apra salvar o registro
  Click Element    xpath=//*[@id="id_label_motiusoveic"]

Preencher o campo Motivo do Uso "${MOTIVO}"
  Input Text    xpath=//*[@id="id_read_off_motiusoveic"]/input   ${MOTIVO}
  Sleep  1s
Preencher o campo Destino "${DESTINO}"
  Input Text    xpath=//*[@id="id_read_off_destveic"]/input   ${DESTINO}
  Sleep  1s
Selecionar uma opção no campo Combustível de Saída "${COMBUSTIVEL}"
  Select From List By Label   xpath=//*[@id="idAjaxSelect_combsaid"]/select   ${COMBUSTIVEL}
  Sleep  1s
Preencher o campo Quilometragem de Saída "${KM}"
  Input Text    xpath=//*[@id="id_read_off_quilveicsaid"]/input   ${KM}
  Sleep  1s
Preencher o campo Data Prevista do Retorno "${DATA}"
  Input Text    xpath=//*[@id="id_read_off_dataprev"]/input[1]   ${DATA}
  Sleep  1s
Preencher o campo Hora Prevista do Retorno "${HORA}"
  Input Text    xpath=//*[@id="id_read_off_horaprev"]/input   ${HORA}
  Sleep  1s
Preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"
  Input Text    xpath=//*[@id="id_read_off_quanpermpass"]/input   ${PASSAGEIROS}
  Sleep  1s
Preencher o campo Kg Transportado "${KG}"
  Input Text    xpath=//*[@id="id_read_off_quankilotran"]/input   ${KG}
  Sleep  1s
Preencher o campo Observação "${OBSERVACAO}"
  Input Text    xpath=//*[@id="id_read_off_obsemovi"]/textarea   ${OBSERVACAO}
  Sleep  1s


#VERIFY

Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Data de Saída *
	${LABEL}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   datasaid

Verificar o campo Hora de Saída *
	${LABEL}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Hora de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   horasaid

Verificar o campo Portaria de Saída *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Portaria de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   portsaid

Verificar a label Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Condutor

Verificar o campo Código
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodicond

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Nome

Verificar a label CNH
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   CNH

Verificar a label Categoria
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Categoria

Verificar a label Vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Vencimento

Verificar a label Aprovador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Aprovador

Verificar o segundo campo Código
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolaautolibe

Verificar a segunda label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a segunda label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Tipo

Verificar a segunda label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Matricula

Verificar a segunda label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Nome

Verificar a label Vigilante da Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Vigilante da Saída

Verificar o terceiro campo Código
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   idvigisaid

Verificar a terceira label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a terceira label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Tipo

Verificar a terceira label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Matricula

Verificar a terceira label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Motivo do Uso *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Motivo do Uso *
 	Element Attribute Value Should Be  ${CAMPO}   name   motiusoveic

Verificar o campo Destino *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Destino *
 	Element Attribute Value Should Be  ${CAMPO}   name   destveic

Verificar o campo Combustível de Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Combustível de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   combsaid

Verificar o campo Quilometragem de Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Quilometragem de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   quilveicsaid

Verificar o campo Data Prevista do Retorno *
	${LABEL}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Prevista do Retorno
 	Element Attribute Value Should Be  ${CAMPO}   name   dataprev

Verificar o campo Hora Prevista do Retorno *
	${LABEL}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora Prevista do Retorno
 	Element Attribute Value Should Be  ${CAMPO}   name   horaprev

Verificar o campo Quantidade de Passageiros
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade de Passageiros
 	Element Attribute Value Should Be  ${CAMPO}   name   quanpermpass

Verificar o campo Kg Transportado
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Kg Transportado
 	Element Attribute Value Should Be  ${CAMPO}   name   quankilotran

Verificar o campo Observação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	
	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obsemovi
