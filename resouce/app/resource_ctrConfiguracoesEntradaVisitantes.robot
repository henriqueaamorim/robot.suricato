*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

# SCREEN
Acessar Tela Configurações - Entrada de Visitantes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configurações - Entrada de Visitantes
  ${APPNAME}  Set Variable    ctrConfiguracoesEntradaVisitantes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Preencher Campo Faixa de Gravação de Crachás Aleatórios "${CRACHA_ALEATORIO}"
    Input Text  name=crachafaixa  ${CRACHA_ALEATORIO}  clear=true

#BUTTON
#resource_btn.



#VERIFY

Verificar a label Gerais
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Gerais

Verificar o campo Critica se Docto do Visitante for de Empregado
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Critica se Docto do Visitante for de Empregado
 	Element Attribute Value Should Be  ${CAMPO}   name   criticadocuvisitempr[]

Verificar o campo Qtde. Dias de Visita na Semana para Critica
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Qtde. Dias de Visita na Semana para Critica
 	Element Attribute Value Should Be  ${CAMPO}   name   qtdediasvisisema

Verificar o campo Critica Visitado Ausente
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Critica Visitado Ausente
 	Element Attribute Value Should Be  ${CAMPO}   name   criticavisiause[]

Verificar o campo Visitante usa RFID
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Visitante usa RFID
 	Element Attribute Value Should Be  ${CAMPO}   name   visirfid[]

Verificar o campo Mostrar Visitado na Entrada de Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Mostrar Visitado na Entrada de Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   exibvisitado[]

Verificar o campo Mostrar Veículo na Entrada de Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Mostrar Veículo na Entrada de Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   exibveiculo[]

Verificar o campo Utilizar somente uma câmera
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utilizar somente uma câmera
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizaumacamera[]

Verificar o campo Utilizar Câmeras Individuais
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utilizar Câmeras Individuais
 	Element Attribute Value Should Be  ${CAMPO}   name   camerasindividuais[]

Verificar o campo Utilizar Workflow de Aprovação de Entrada de Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utilizar Workflow de Aprovação de Entrada de Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   ativaworkflow[]

Verificar o campo Lançador é Auto Aprovador de Visitas
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Lançador é Auto Aprovador de Visitas
 	Element Attribute Value Should Be  ${CAMPO}   name  autorizaraprovadorworkflow[] 

Verificar a label Aviso/Liberação de Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Aviso/Liberação de Visitante

Verificar o campo Controlar Aviso/Liberação de Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Controlar Aviso/Liberação de Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   fldcontrolaavisoliberacao[]

Verificar o campo Notificar Visitado por E-mail
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Notificar Visitado por E-mail
 	Element Attribute Value Should Be  ${CAMPO}   name   fldnotificacaoemail[]

Verificar o campo Notificar Visitado por Popup
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Notificar Visitado por Popup
 	Element Attribute Value Should Be  ${CAMPO}   name  fldnotificacaopopup[] 

Verificar o campo Notificar Visitado por Mobile
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Notificar Visitado por Mobile
 	Element Attribute Value Should Be  ${CAMPO}   name   fldnotificacaomobile[]

Verificar o campo Gravar Cartão SmartCard
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Gravar Cartão SmartCard
 	Element Attribute Value Should Be  ${CAMPO}   name   fldgravarcartao[]

Verificar a label Valores Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Valores Padrão

Verificar o campo Empresa Terceira Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Empresa Terceira Padrão
 	Element Attribute Value Should Be  ${CAMPO}   name   padremprterc

Verificar o campo Tipo de Visita Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Visita Padrão
 	Element Attribute Value Should Be  ${CAMPO}   name   padrtipovisi

Verificar o campo Código Permissão Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Código Permissão Padrão
 	Element Attribute Value Should Be  ${CAMPO}   name   padrcodiperm

Verificar o campo Empresa Padrão (Colaborador)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Empresa Padrão (Colaborador)
 	Element Attribute Value Should Be  ${CAMPO}   name   padremprcola

Verificar o campo Tipo de Colaborador Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Colaborador Padrão
 	Element Attribute Value Should Be  ${CAMPO}   name   padrtipocola

Verificar a label Entrada Automatizadas
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Entrada Automatizadas

Verificar o campo Faixa de Gravação de Crachás Aleatórios
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Faixa de Gravação de Crachás Aleatórios
 	Element Attribute Value Should Be  ${CAMPO}   name   crachafaixa

Verificar o campo Período para Reutilização de Crachás em Dias
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Período para Reutilização de Crachás em Dias
 	Element Attribute Value Should Be  ${CAMPO}   name   periovisitcrachadias

#FIELD
Selecionar a opção Critica se Docto do Visitante for de Empregado
	Click Element  xpath=//*[@name="criticadocuvisitempr[]"]

Preencher o campo Qtde. Dias de Visita na Semana para Critica "2"
	Input Text  xpath=//*[@name="qtdediasvisisema"][@type="text"]

Selecionar a opção Critica Visitado Ausente
	Click Element  xpath=//*[@name="criticavisiause[]"]

Selecionar a opção Visitante usa RFID
	Click Element  xpath=//*[@name="visirfid[]"]

Selecionar a opção Mostrar Visitado na Entrada de Visitante
	Click Element  xpath=//*[@name="exibvisitado[]"]

Selecionar a opção Mostrar Veículo na Entrada de Visitante
	Click Element  xpath=//*[@name="exibveiculo[]"]

Selecionar a opção Utilizar somente uma câmera
	Click Element  xpath=//*[@name="utilizaumacamera[]"]

Selecionar a opção Utilizar Câmeras Individuais
	Click Element  xpath=//*[@name="camerasindividuais[]"]

Selecionar a opção Utilizar Workflow de Aprovação de Entrada de Visitante
	Click Element  xpath=//*[@name="ativaworkflow[]"]

Selecionar a opção Lançador é Auto Aprovador de Visitas 
	Click Element  xpath=//*[@name="autorizaraprovadorworkflow[]"]

Selecionar a opção Controlar Aviso/Liberação de Visitante
	Click Element  xpath=//*[@name="fldcontrolaavisoliberacao[]"]

Selecionar a opção Notificar Visitado por E-mail
	Click Element  xpath=//*[@name="fldnotificacaoemail[]"]

Selecionar a opção Notificar Visitado por Popup
	Click Element  xpath=//*[@name="fldnotificacaopopup[]"]

Selecionar a opção Notificar Visitado por Mobile
	Click Element  xpath=//*[@name="fldnotificacaomobile[]"]

Selecionar a opção Gravar Cartão SmartCard
	Click Element  xpath=//*[@name="fldgravarcartao[]"]

Selecionar uma opção no campo Empresa Terceira Padrão "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="padremprterc"]   ${EMPRESA}
	
Selecionar uma opção no campo Tipo de Visita Padrão "${TIPO}"
	Select From List By Label  xpath=//*[@name="padrtipovisi"]   ${TIPO}
	
Selecionar uma opção no campo Código Permissão Padrão "${CODIGO}"
	Select From List By Label  xpath=//*[@name="padrcodiperm"]   ${CODIGO}

Selecionar uma opção no campo Empresa Padrão (Colaborador) "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="padremprcola"]   ${EMPRESA}

Selecionar uma opção no campo Tipo de Colaborador Padrão "${TIPO}"
	Select From List By Label  xpath=//*[@name="padrtipocola"]   ${TIPO}

Preencher o campo Faixa de Gravação de Crachás Aleatórios "${GRAVACAO}"
	Input Text  xpath=//*[@name="crachafaixa"][@type="text"]  ${GRAVACAO}

Preencher o campo Período para Reutilização de Crachás em Dias "${PERIODO}"
	Input Text  xpath=//*[@name="periovisitcrachadias"][@type="text"]  ${PERIODO}
	