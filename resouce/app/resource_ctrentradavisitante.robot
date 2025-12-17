*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***
${BTN_OBJ}  Btn

*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

# SCREEN
Acessar Tela Entrada de Visitante
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrentradavisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${SCREENNAME}   Set Variable    Entrada de Visitante
	${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
	${SCREENNAME}  Set Variable  Entrada de Visitante
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  
  Mudar Frame Aplicação "mnu_iframe"
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Entrada de Visitante (Com Captura de Foto)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Visitante
  ${APPNAME}  Set Variable  ctrentradavisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "ifEntradaVisitantes"

  Sleep  5s 
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
Clicar No Botão Buscar Dados Externos Para Crachá
  Scroll Element Into View    xpath=//*[@id="cap_icard"]
  Click Element   xpath=//*[@id="cap_icard"]

Fechar o A Janela De Alerta
  Handle Alert

Clicar No Botão Atualizar
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="id_read_on_btnatualizar"]/span/img  

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar no Campo Teste
  Click Element  //*[@id="id_read_off_teste"]/input

#BUTTON (246) 

Clicar Na Aba: Portaria
  Click Element   xpath=//li[@id='sc-ui-form-step-0']
  Sleep  2s

Clicar Na Aba: Visitado
  Click Element   xpath=//li[@id='sc-ui-form-step-1']  

Clicar Na Aba: Visitante
  Click Element   xpath=//li[@id='sc-ui-form-step-2']  

Clicar Na Aba: Veículo
  Click Element   xpath=//li[@id='sc-ui-form-step-3']   

Clicar Na Aba: Geral
  Click Element   xpath=//li[@id='sc-ui-form-step-4']      


#VERIFY TODAS AS ABAS (246)

Verificar a Aba: Portaria
	${Aba}   Set Variable  xpath=//li[@id='sc-ui-form-step-0']
	Element Should Contain  ${Aba}   Portaria

Verificar a Aba: Visitado
	${Aba}   Set Variable  xpath=//li[@id='sc-ui-form-step-1']
	Element Should Contain  ${Aba}   Visitado

Verificar a Aba: Visitante
	${Aba}   Set Variable  xpath=//li[@id='sc-ui-form-step-2']
	Element Should Contain  ${Aba}   Visitante

Verificar a Aba: Veículo
	${Aba}   Set Variable  xpath=//li[@id='sc-ui-form-step-3']
	Element Should Contain  ${Aba}   Veículo

Verificar a Aba: Geral
	${Aba}   Set Variable  xpath=//li[@id='sc-ui-form-step-4']
	Element Should Contain  ${Aba}   Geral	

# VERIFY

Verificar a label: * Campos obrigatórios
	${LABEL}      Set Variable   xpath=//span[contains(text(),'* Campos obrigatórios')]
    Element Should Contain             ${LABEL}   * Campos obrigatórios		

#VERIFY CAMPOS NA ABA PORTARIA (246)

Verificar o Campo: Portaria
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Portaria')]
	Element Should Contain  ${LABEL}   Portaria	

Verificar o Campo: Data da Entrada
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Data da Entrada')]
	Element Should Contain  ${LABEL}   Data da Entrada 	

Verificar o Campo: Hora da Entrada
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Hora de Entrada')]
	Element Should Contain  ${LABEL}   Hora de Entrada

#VERIFY CAMPOS NA ABA VISITADO (246)	

Verificar o Botão: Pesquisar (Aba Visitado)
    ${BTN}   Set Variable  xpath=//button[@id='btnPesquisarVisitado']
	Element Should Contain  ${BTN}   Pesquisar	

Verificar o campo: Visitado
	${LABEL}   Set Variable   xpath=//span[@id='id_label_nomevisitado']
	${CAMPO}   Set Variable   xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain  ${LABEL}   Visitado		


#VERIFY CAMPOS NA ABA VISITANTE (246)	

Verificar o Botão: Pesquisar (Aba Visitante)
    ${BTN}   Set Variable  xpath=//button[@id='btnPesquisarVisitante']
	Element Should Contain  ${BTN}   Pesquisar	

Verificar o campo: Tipo de Documento
	${LABEL}   Set Variable   xpath=//span[@id='id_label_padtipodocuvisi']
	${CAMPO}   Set Variable   xpath=//span[@class='select2-selection select2-selection--single css_padtipodocuvisi_obj']
	Element Should Contain  ${LABEL}   Tipo de Documento	
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_padtipodocuvisi_obj

Verificar o campo: Número Documento
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padnumedocuvisi']
	${CAMPO}      Set Variable   xpath=//input[@name='padnumedocuvisi']
	Element Should Contain             ${LABEL}   Número Documento
 	Element Attribute Value Should Be  ${CAMPO}   name   padnumedocuvisi

Verificar o campo: Estado Emissor
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padufemissor']
	${CAMPO}      Set Variable   xpath=//input[@name='padufemissor']
	Element Should Contain             ${LABEL}   Estado Emissor
 	Element Attribute Value Should Be  ${CAMPO}   name   padufemissor

Verificar o campo: Órgão Emissor
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padorgaoemissor']
	${CAMPO}      Set Variable   xpath=//input[@name='padorgaoemissor']
	Element Should Contain             ${LABEL}   Órgão Emissor
 	Element Attribute Value Should Be  ${CAMPO}   name   padorgaoemissor

Verificar o campo: Nome do Visitante
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padnomevisi']
	${CAMPO}      Set Variable   xpath=//input[@name='padnomevisi']
	Element Should Contain             ${LABEL}   Nome do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   padnomevisi	

Verificar o campo: Email
	${LABEL}      Set Variable   xpath=//span[@id='id_label_mailvisit']
	${CAMPO}      Set Variable   xpath=//input[@name='mailvisit']
	Element Should Contain             ${LABEL}   Email
 	Element Attribute Value Should Be  ${CAMPO}   name   mailvisit	

Verificar o campo: Telefone
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padnumetele']
	${CAMPO}      Set Variable   xpath=//input[@name='padnumetele']
	Element Should Contain             ${LABEL}   Telefone
 	Element Attribute Value Should Be  ${CAMPO}   name   padnumetele	

Verificar o campo: Empresa Terceira
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padnomeemprprest']
	${CAMPO}      Set Variable   xpath=//input[@name='padnomeemprprest']
	Element Should Contain             ${LABEL}   Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   padnomeemprprest	

Verificar o campo: PNE
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padvisitantepne']
	${CAMPO}      Set Variable   xpath=//span[@id='idAjaxSelect_padvisitantepne']
	Element Should Contain             ${LABEL}   PNE	
	Element Attribute Value Should Be  ${CAMPO}   id  idAjaxSelect_padvisitantepne

Verificar a label: Biometria
	${LABEL}      Set Variable   xpath=//td[contains(text(),'Biometria')]
    Element Should Contain             ${LABEL}   Biometria
	

Verificar a label: Padrão
	${LABEL}      Set Variable   xpath=//th[contains(text(),'Padrão')]
    Element Should Contain             ${LABEL}   Padrão

Verificar a label: Alternativo	
	${LABEL}      Set Variable   xpath=//th[contains(text(),'Alternativo')]
    Element Should Contain             ${LABEL}   Alternativo	

Verificar a label: Coação
	${LABEL}      Set Variable   xpath=//th[contains(text(),'Coação')]
    Element Should Contain             ${LABEL}   Coação		


#VERIFY CAMPOS NA ABA VEÍCULO (246)	

Verificar a Label: Veículo
	${LABEL}   Set Variable  xpath=//span[@id='id_label_btnveiculo']
	Element Should Contain  ${LABEL}   Veículo	

Verificar o campo: Placa do Veículo
	${LABEL}      Set Variable   xpath=//span[@id='id_label_padplacveic']
	${CAMPO}      Set Variable   xpath=//input[@name='padplacveic']
	Element Should Contain             ${LABEL}   Placa do Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   padplacveic

Verificar o campo: Cor do Veículo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Cor do Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='padcorveic']
	Element Should Contain             ${LABEL}   Cor do Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  padcorveic

Verificar o campo: Marca do Veículo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Marca do Veículo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padidmarcveic_obj']
	Element Should Contain             ${LABEL}   Marca do Veículo
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_padidmarcveic_obj


Verificar o campo: Modelo do Veículo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Modelo do Veículo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padidmodeveic_obj']
	Element Should Contain             ${LABEL}   Modelo do Veículo
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_padidmodeveic_obj

Verificar o campo: Tipo de Veículo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo de Veículo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padtipoveic_obj']
	Element Should Contain             ${LABEL}   Tipo de Veículo
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_padtipoveic_obj

Verificar o campo: Combustível
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Combustível')]
	${CAMPO}      Set Variable  xpath=//select[@class='sc-js-input scFormObjectOdd css_padveictipocomb_obj sc-ui-100perc-input']
	Element Should Contain             ${LABEL}   Combustível
	Element Attribute Value Should Be  ${CAMPO}   class  sc-js-input scFormObjectOdd css_padveictipocomb_obj sc-ui-100perc-input

#VERIFY CAMPOS NA ABA GERAL (246)	

Verificar o campo: Crachá
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name  icard

Verificar o botão com ícone de lupa: Buscas dados Externos
	${LABEL}      Set Variable  xpath=//a[@id='cap_icard']
	Element Should Contain             ${LABEL}   Buscas dados Externos

Verificar o campo: Permissão 
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Permissão')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-id_sc_field_codiperm-container']
	Element Should Contain             ${LABEL}   Permissão
	Element Attribute Value Should Be  ${CAMPO}   id  select2-id_sc_field_codiperm-container

Verificar o campo: Data da Validade 
	${LABEL}      Set Variable  xpath=//span[@id='id_label_datavali']
	${CAMPO}      Set Variable  xpath=//span[@id='select2-id_sc_field_codiperm-container']
	${BTN}		  Set Variable  xpath=(//span[@class='scButton_fontawesome fas fa-calendar-alt'])[3]
	Element Should Contain             ${LABEL}   Data da Validade 
	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_codiperm-container
 	Element Attribute Value Should Be  ${BTN}     class  scButton_fontawesome fas fa-calendar-alt

Verificar o campo: Hora de Validade
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Hora de Validade')]
	${CAMPO}      Set Variable  xpath=//input[@name='horavali']
	Element Should Contain             ${LABEL}   Hora de Validade
	Element Attribute Value Should Be  ${CAMPO}   name  horavali

Verificar o campo: Observação
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Observação')]
	${CAMPO}      Set Variable  xpath=//textarea[@name='obsevisi']
	Element Should Contain             ${LABEL}   Observação
	Element Attribute Value Should Be  ${CAMPO}   name  obsevisi

Verificar o campo: Tipo de Visita
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo de Visita')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-id_sc_field_tipovisi-container']
	Element Should Contain             ${LABEL}   Tipo de Visita
	Element Attribute Value Should Be  ${CAMPO}   id  select2-id_sc_field_tipovisi-container	


#VERIFY (249)

Verificar o campo Portaria
  ${LABEL_PORTARIA}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
  ${CAMPO_PORTARIA}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/span/select

  Element Should Be Visible  ${LABEL_PORTARIA}
  Element Should Be Visible  ${CAMPO_PORTARIA}

Verificar o campo Portaria *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Portaria *
 	Element Attribute Value Should Be  ${CAMPO}   name   codiport

Verificar a label Data de Entrada * 
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Data de Entrada * 

Verificar a label Hora de Entrada *
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Hora de Entrada *

Verificar a label Visitado
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Visitado

Verificar o campo Tipo do Documento 
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Tipo do Documento 
 	Element Attribute Value Should Be  ${CAMPO}   name   tipodocu

Verificar o campo Documento *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[3]/input

	Element Should Contain  ${LABEL}   Documento *
 	Element Attribute Value Should Be  ${CAMPO}   name   docvisi

Verificar a label Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Veículo

Verificar o campo Placa
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/input

	Element Should Contain  ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   placa

Verificar o campo Cor *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Cor *
 	Element Attribute Value Should Be  ${CAMPO}   name   corveiculo

Verificar o campo Marca *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Marca *
 	Element Attribute Value Should Be  ${CAMPO}   name   marca

Verificar o campo Modelo *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Modelo *
 	Element Attribute Value Should Be  ${CAMPO}   name   modelo

Verificar o campo Tipo do Veiculo
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Tipo do Veiculo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoveicu

Verificar o campo Tipo de Combustivel *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[6]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[6]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Tipo de Combustivel *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocomb

Verificar o campo Data de Validade da Fumaça *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[7]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[7]/table/tbody/tr/td[1]/span[3]/input[1]

	Element Should Contain  ${LABEL}   Data de Validade da Fumaça *
 	Element Attribute Value Should Be  ${CAMPO}   name   datavalifumaca

Verificar a label Dados Gerais
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Dados Gerais

Verificar o campo Utilizar Criptografia?
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/div/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Utilizar Criptografia?
 	Element Attribute Value Should Be  ${CAMPO}   name   criptografia[]

Verificar o campo Crachá *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[3]/input

	Element Should Contain  ${LABEL}   Crachá *
 	Element Attribute Value Should Be  ${CAMPO}   name   crachasemvia

Verificar o campo Via
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[3]/input

	Element Should Contain  ${LABEL}   Via
 	Element Attribute Value Should Be  ${CAMPO}   name   viacracha

Verificar o campo Grupo de Acesso do Visitante *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Grupo de Acesso do Visitante *
 	Element Attribute Value Should Be  ${CAMPO}   name   codiperm

Verificar o campo Tipo da Visita *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain  ${LABEL}   Tipo da Visita *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipovisi

Verificar o campo Assistiu o Vídeo
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/div/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Assistiu o Vídeo
 	Element Attribute Value Should Be  ${CAMPO}   name   assistiuvideo[]

Verificar o campo Data em que assistiu o Vídeo
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[3]/input[1]

	Element Should Contain  ${LABEL}   Data em que assistiu o Vídeo
 	Element Attribute Value Should Be  ${CAMPO}   name   datavideo

Verificar o campo Data de Validade *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/input[1]

	Element Should Contain  ${LABEL}   Data de Validade *
 	Element Attribute Value Should Be  ${CAMPO}   name   datavali

Verificar a label Hora de Validade *
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Hora de Validade *

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   padobs

#FIELD
Selecionar uma opção no campo Portaria "${PORTARIA}"
  Click Element  xpath=//*[@id="idAjaxSelect_codiport"]
  Select From List By Label    xpath=//*[@id="id_sc_field_codiport"]  ${PORTARIA}
  

Selecionar uma opção no campo Data da Entrada * "${DATA}""
  Input Text  xpath=//input[@name="dataentr"]  ${DATA}
  Sleep  2s  

Selecionar uma opção no campo Hora de Entrada * "${HORA}"
  Input Text  xpath=//input[@name="horaentr"]  ${HORA}
  Sleep  2s    

Selecionar uma opção no campo Tipo de Acesso Alfandegado "${ACESSO}"
  Select From List By Label    xpath=//*[@name="tipoacesalfa"]   ${ACESSO}
  Sleep  2s

Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label    xpath=//*[@name="codiempr"]   ${EMPRESA}
  Sleep  2s

Selecionar uma opção no campo Tipo do Colaborador "${COLAB}"
  Select From List By Label    xpath=//*[@name="tipocola"]  ${COLAB}
  Sleep  2s

Preencher o campo Matrícula "${MATRICULA}"
  Input Text    xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}
  Sleep  2s

Selecionar uma opção no campo Tipo de Documento "${TIPO_DOC}"
  Select From List By Label    xpath=//*[@name="tipodocu"]  ${TIPO_DOC}
  Sleep  2s

Preencher o campo Documento "${DOC}"
  Input Text    xpath=//*[@name="docvisi"][@type="text"]  ${DOC}
  Sleep  2s

Preencher o campo Placa "${PLACA}"
  Input Text    xpath=//*[@name="placa"][@type="text"]  ${PLACA}
  Sleep  2s

Selecionar uma opção no campo Cor "${COR}"
  Select From List By Label    xpath=//*[@name="corveiculo"]  ${COR}
  Sleep  2s

Selecionar uma opção no campo Marca "${MARCA}"
  Select From List By Label    xpath=//*[@name="marca"]  ${MARCA}
  Sleep  2s

Selecionar uma opção no campo Modelo "${MODELO}"
  Select From List By Label    xpath=//*[@name="modelo"]   ${MODELO}
  Sleep  2s

Selecionar uma opção no campo Tipo de Veiculo "${VEICULO}"
  Select From List By Label    xpath=//*[@name="tipoveicu"]  ${VEICULO}
  Sleep  2s

Selecionar uma opção no campo Tipo do Combustivel "${COMBUSTIVEL}"
  Select From List By Label    xpath=//*[@name="tipocomb"]  ${COMBUSTIVEL}
  Sleep  2s

Preencher o campo Data de Validade da Fumaça "${VALIDADE}"
  Input Text    xpath=//*[@name="datavalifumaca"][@type="text"]  ${VALIDADE}
  Sleep  2s

Preencher o campo Crachá "${CRACHA}"
  Input Text    xpath=//*[@name="icard"][@type="text"]  ${CRACHA}
  Sleep  2s

Selecionar uma opção no campo Grupo de Acesso do Visitante "${ACESSO}"
  Select From List By Label    xpath=//*[@name="codiperm"]  ${ACESSO}
  Sleep  2s

Selecionar uma opção no campo Tipo da Visita "${VISITA}"
  Select From List By Label    xpath=//*[@name="tipovisi"]  ${VISITA}
  Sleep  2s

Preencher o campo Observações "${OBSERVACOES}"
  Input Text    xpath=//*[@name="padobs"]  ${OBSERVACOES}

Rolar A Pagina Para Baixo "${LOCAL}"
  Scroll Element Into View  ${LOCAL}



