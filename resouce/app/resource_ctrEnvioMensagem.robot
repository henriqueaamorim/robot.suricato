*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem

# SCREEN
Acessar Tela: Envio de Mensagem
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  ctrEnvioMensagem
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
       ${SCREENNAME}  Set Variable    Envio de Mensagem
       ${ELEMENT}     Set Variable    xpath=//div[contains(text(),'${SCREENNAME}')]
  ELSE
       ${SCREENNAME}  Set Variable  Envio de Mensagem
       ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "iframe_mnu"
  Sleep  2s
  Mudar Frame Aplicação "nmsc_iframe_ctrEnvioMensagem_1"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ENVIO DE MENSAGEM

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela: Pesquisa de Colaboradores
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  ctrEnvioMensagem
  ${SCREENNAME}  Set Variable  Pesquisa de Colaboradores
  ${ELEMENT}     Set Variable  xpath=//h5[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#VERIFY CAMPOS
Verificar o campo: Tipo
  ${LABEL}       Set Variable  xpath=//span[@id='id_label_tipopessoa']
  ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Colaborador')]
  ${LABEL2}      Set Variable  xpath=//label[contains(text(),'Visitante')]
  ${CAMPO1}      Set Variable  xpath=//input[@id='id-opt-tipopessoa-0']
  ${CAMPO2}      Set Variable  xpath=//input[@id='id-opt-tipopessoa-1']
  Sleep  2s
  Element Should Contain             ${LABEL}    Tipo
  Element Should Contain             ${LABEL1}   Colaborador
  Element Should Contain             ${LABEL2}   Visitante
  Element Attribute Value Should Be  ${CAMPO1}   name   tipopessoa
  Element Attribute Value Should Be  ${CAMPO2}   name   tipopessoa

Verificar o campo: Data de Início da Mensagem 
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data de Início da Mensagem')]
	${CAMPO}      Set Variable  xpath=//input[@name='datainic']
	Element Should Contain             ${LABEL}   Data de Início da Mensagem 
 	Element Attribute Value Should Be  ${CAMPO}   name  datainic

Verificar o campo: Data de Término da Mensagem
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data de Término da Mensagem')]
	${CAMPO}      Set Variable  xpath=//input[@name='datafina']
	Element Should Contain             ${LABEL}   Data de Término da Mensagem
 	Element Attribute Value Should Be  ${CAMPO}   name  datafina

Verificar o campo: Hora Inicial
	${LABEL}      Set Variable  xpath=//span[@id='id_label_horainicsc9bugfixed']
	${CAMPO}      Set Variable  xpath=//input[@name='horainicsc9bugfixed']
	Element Should Contain             ${LABEL}   Hora Inicial 
 	Element Attribute Value Should Be  ${CAMPO}   name  horainicsc9bugfixed

Verificar o campo: Hora Final
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Hora Final')]
	${CAMPO}      Set Variable  xpath=//input[@name='horafimsc9bugfixed']
	Element Should Contain             ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO}   name  horafimsc9bugfixed

Verificar o campo: Quantidade de Visualização
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Quantidade de Visualização')]
	${CAMPO}      Set Variable  xpath=//input[@name='qtdemenscole']
	Element Should Contain             ${LABEL}   Quantidade de Visualização
 	Element Attribute Value Should Be  ${CAMPO}   name  qtdemenscole

Verificar o campo: Mensagem 
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Mensagem')]
	${CAMPO}      Set Variable  xpath=//textarea[@name='menscole']
	Element Should Contain             ${LABEL}   Mensagem 
 	Element Attribute Value Should Be  ${CAMPO}   name  menscole          

#VERIFY CAMPOS: Pesquisa de Colaboradores
Verificar o campo: Nome do Colaborador
  ${CAMPO}  Set Variable  xpath=//input[@name='nome']
  Element Attribute Value Should Be   ${CAMPO}  name  nome

Verificar o campo: Crachá
  ${CAMPO}  Set Variable  xpath=//input[@name='icard']
  Element Attribute Value Should Be   ${CAMPO}  name  icard  

Verificar o campo: Matrícula
  ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']
  Element Attribute Value Should Be   ${CAMPO}  name  codimatr    

Verificar o campo: Tipo do Colaborador
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_tipocola']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_tipocola    

Verificar o campo: Empresa
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiempr']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiempr

Verificar o campo: Código da Filial
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codifilia']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codifilia  

Verificar o campo: Centro de custo
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicentcusto']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicentcusto 

Verificar o campo: Código da Escala
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiesca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiesca  

Verificar o campo: Código do Organograma Local 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiorgaloca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiorgaloca  

Verificar o campo: Local 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiloca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiloca

Verificar o campo: Grupo de Cargos 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiestrutcargo']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiestrutcargo

Verificar o campo: Código do Cargo 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicargo']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicargo

Verificar o campo: Empresa Terceira 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiemprterc']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiemprterc

Verificar o campo: Contrato
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicontr']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicontr 

Verificar o campo: External Key
  ${CAMPO}  Set Variable  xpath=//input[@name='chave_externa']
  Element Attribute Value Should Be   ${CAMPO}  name  chave_externa

Verificar o campo: Total de registros à exibir na consulta
  ${CAMPO}  Set Variable  xpath=//input[@name='contador']
  Element Attribute Value Should Be   ${CAMPO}  name  contador  