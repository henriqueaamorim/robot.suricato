*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

# SCREEN
Acessar Tela Matrícula Automática
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matrícula Automática
  ${APPNAME}  Set Variable  ctrConfiguracoesGerais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Matrícula Automática - Auto-Incrementos Habilitados
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matrícula Automática
  ${APPNAME}  Set Variable  ctrConfiguracoesGerais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
Ativar Auto-Incrementos
#Auto-Incremento Parceiro (Sim)
  Select from List by Label  pjocultaparceiro  Sim

#Auto-Incremento Terceiro (Sim)
  Select from List by Label  tcocultaparceiro  Sim

#Auto-Incremento Funcionário (Sim)
  Select from List by Label  fnocultaparceiro  Sim



#VERIFY

Verificar a label Parcero
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Parcero

Verificar o campo Auto Incremento na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Auto Incremento
 	Element Attribute Value Should Be  ${CAMPO}   name   pjocultaparceiro

Verificar o campo Permissão - Dia da Semana na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Dia da Semana
 	Element Attribute Value Should Be  ${CAMPO}   name   pjdiassemana

Verificar o campo Permissão - Sábado na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Sábado
 	Element Attribute Value Should Be  ${CAMPO}   name   pjdiassabado

Verificar o campo Permissão - Domingo na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Domingo
 	Element Attribute Value Should Be  ${CAMPO}   name   pjdiasdomingo

Verificar o campo Permissão - Feriado na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name   pjdiasferiado

Verificar o campo Permissão - Visitante na área de Parceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   pjdiasvisitante

Verificar a label Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Terceiro

Verificar o campo Auto Incremento na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Auto Incremento
 	Element Attribute Value Should Be  ${CAMPO}   name   tcocultaparceiro

Verificar o campo Permissão - Dia da Semana na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Dia da Semana
 	Element Attribute Value Should Be  ${CAMPO}   name   tcdiassemana

Verificar o campo Permissão - Sábado na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Sábado
 	Element Attribute Value Should Be  ${CAMPO}   name   tcdiassabado

Verificar o campo Permissão - Domingo na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Domingo
 	Element Attribute Value Should Be  ${CAMPO}   name   tcdiasdomingo

Verificar o campo Permissão - Feriado na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name  tcdiasferiado 

Verificar o campo Permissão - Visitante na área de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   tcdiasvisitante

Verificar a label Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Funcionário

Verificar o campo Auto Incremento na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Auto Incremento
 	Element Attribute Value Should Be  ${CAMPO}   name   fnocultaparceiro

Verificar o campo Permissão - Dia da Semana na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Dia da Semana
 	Element Attribute Value Should Be  ${CAMPO}   name   fndiassemana

Verificar o campo Permissão - Sábado na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Sábado
 	Element Attribute Value Should Be  ${CAMPO}   name   fndiassabado

Verificar o campo Permissão - Domingo na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Domingo
 	Element Attribute Value Should Be  ${CAMPO}   name   fndiasdomingo

Verificar o campo Permissão - Feriado na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name   fndiasferiado

Verificar o campo Permissão - Visitante na área de Funcionário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Permissão - Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   fndiasvisitante

Verificar a label Gravação Automatica Provisorio
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Gravação Automatica Provisorio

Verificar o campo Config. Baixa Automática Provisórios
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Config. Baixa Automática Provisórios
 	Element Attribute Value Should Be  ${CAMPO}   name   gravaautomprovisorio



#FIELD
Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Parceiro
	Select From List By Label  xpath=//*[@name="pjocultaparceiro"]  ${AUTO_INCREMENTO}

Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Parceiro
	Input Text  xpath=//*[@name="pjdiassemana"][@type="text"]  ${PERMISSÃO_DIA_DA_SEMANA}

Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Parceiro
	Input Text  xpath=//*[@name="pjdiassabado"][@type="text"]  ${PERMISSÃO_SÁBADO}

Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Parceiro
	Input Text  xpath=//*[@name="pjdiasdomingo"][@type="text"]  ${PERMISSÃO_DOMINGO}

Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Parceiro
	Input Text  xpath=//*[@name="pjdiasferiado"][@type="text"]  ${PERMISSÃO_FERIADO}

Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Parceiro
	Input Text  xpath=//*[@name="pjdiasvisitante"][@type="text"]  ${PERMISSÃO_VISITANTE}

Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Terceiro
	Select From List By Label  xpath=//*[@name="tcocultaparceiro"]  ${AUTO_INCREMENTO}

Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Terceiro
	Input Text  xpath=//*[@name="tcdiassemana"][@type="text"]  ${PERMISSÃO_DIA_DA_SEMANA}

Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Terceiro
	Input Text  xpath=//*[@name="tcdiassabado"][@type="text"]  ${PERMISSÃO_SÁBADO}

Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Terceiro
	Input Text  xpath=//*[@name="tcdiasdomingo"][@type="text"]  ${PERMISSÃO_DOMINGO}

Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Terceiro
	Input Text  xpath=//*[@name="tcdiasferiado"][@type="text"]  ${PERMISSÃO_FERIADO}

Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Terceiro
	Input Text  xpath=//*[@name="tcdiasvisitante"][@type="text"]  ${PERMISSÃO_VISITANTE}

Selecionar uma opção no campo Auto Incremento "${AUTO_INCREMENTO}" da área de Funcionário
	Select From List By Label  xpath=//*[@name="fnocultaparceiro"]  ${AUTO_INCREMENTO}

Preencher o campo Permissão - Dia da Semana "${PERMISSÃO_DIA_DA_SEMANA}" da área de Funcionário
	Input Text  xpath=//*[@name="fndiassemana"][@type="text"]  ${PERMISSÃO_DIA_DA_SEMANA}

Preencher o campo Permissão - Sábado "${PERMISSÃO_SÁBADO}" da área de Funcionário
	Input Text  xpath=//*[@name="fndiassabado"][@type="text"]  ${PERMISSÃO_SÁBADO}

Preencher o campo Permissão - Domingo "${PERMISSÃO_DOMINGO}" da área de Funcionário
	Input Text  xpath=//*[@name="fndiasdomingo"][@type="text"]  ${PERMISSÃO_DOMINGO}

Preencher o campo Permissão - Feriado "${PERMISSÃO_FERIADO}" da área de Funcionário
	Input Text  xpath=//*[@name="fndiasferiado"][@type="text"]  ${PERMISSÃO_FERIADO}

Preencher o campo Permissão - Visitante "${PERMISSÃO_VISITANTE}" da área de Funcionário
	Input Text  xpath=//*[@name="fndiasvisitante"][@type="text"]  ${PERMISSÃO_VISITANTE}

Selecionar uma opção no campo Config. Baixa Automática Provisórios "${CONFIG_BAIXA_AUTOMÁTICA_PROVISÓRIOS}"
	Select From List By Label  xpath=//*[@name="gravaautomprovisorio"]  ${CONFIG_BAIXA_AUTOMÁTICA_PROVISÓRIOS}

