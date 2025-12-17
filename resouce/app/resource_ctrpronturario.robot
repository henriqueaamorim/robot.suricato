*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

# SCREEN
Acessar Tela Prontuário do Veículo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Prontuário do Veículo
  ${APPNAME}     Set Variable  ctrpronturario
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Prontuário do Veículo - Resultado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Prontuário do Veículo
  ${APPNAME}     Set Variable  ctrpronturario
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Veículo "${NUM}"
  Input Text    xpath=//*[@name="idveic"][@type="text"]    ${NUM}

Preencher o campo Crachá "${CRACHA}"
  Input Text    xpath=//*[@name="icard"][@type="text"]    ${CRACHA}

#VERIFY

Verificar o campo Veículo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Veículo')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='idveic']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td/span[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td/input[1]
	END
	Element Should Contain  ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Crachá
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Crachá')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='icard']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td/span[3]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td/input[3]
	END
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar a label Dados Gerais
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'DADOS GERAIS')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   DADOS GERAIS

Verificar a label UF da Placa:
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'UF da Placa: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[1]
	END
	Element Should Contain  ${LABEL}   UF da Placa:


Verificar a label Ano Veículo:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Ano Veículo: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[2]/td[1]
	END
	Element Should Contain  ${LABEL}   Ano Veículo:
	

Verificar a label Peso:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Peso: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[3]/td[1]
	END
	Element Should Contain  ${LABEL}   Peso:

Verificar a label Data p/ Troca:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data p/ Troca: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}   Data p/ Troca:

Verificar a label Tipo Combustível:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Combustível: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[5]/td[1]
	END
	Element Should Contain  ${LABEL}   Tipo Combustível:

Verificar a label Qtd. Passageiros:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Qtd. Passageiros: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[6]/td[1]
	END
	Element Should Contain  ${LABEL}   Qtd. Passageiros:

Verificar a label Mês Venc. Seguro:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Mês Venc. Seguro: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[7]/td[1]
	END
	Element Should Contain  ${LABEL}   Mês Venc. Seguro:

Verificar a label KM Atual:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'KM Atual: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[8]/td[1]
	END
	Element Should Contain  ${LABEL}   KM Atual:

Verificar a label Marca:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Marca: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[2]
	END
	Element Should Contain  ${LABEL}   Marca:

Verificar a label Ano Modelo:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Ano Modelo: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[2]/td[2]
	END
	Element Should Contain  ${LABEL}   Ano Modelo:

Verificar a label Capacidade de Carga:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Capacidade de Carga: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[3]/td[2]
	END
	Element Should Contain  ${LABEL}   Capacidade de Carga:

Verificar a label Chassi:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Chassi: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[5]/td[2]
	END
	Element Should Contain  ${LABEL}   Chassi:

Verificar a label Cód. Renavam:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Cód. Renavam: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[6]/td[2]
	END
	Element Should Contain  ${LABEL}   Cód. Renavam:

Verificar a label Mês Venc. IPVA:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Mês Venc. IPVA: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[7]/td[2]
	END
	Element Should Contain  ${LABEL}   Mês Venc. IPVA:

Verificar a label Modelo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Modelo: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[3]
	END
	Element Should Contain  ${LABEL}   Modelo: 

Verificar a label Tipo Veículo:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Veículo: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[2]/td[3]
	END
	Element Should Contain  ${LABEL}   Tipo Veículo:

Verificar a label Cor:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Cor: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[3]/td[3]
	END
	Element Should Contain  ${LABEL}   Cor:

Verificar a label Situação:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Situação: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[4]/td[2]
	END
	Element Should Contain  ${LABEL}   Situação:

Verificar a label Número do Motor:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Número do Motor: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[5]/td[3]
	END
	Element Should Contain  ${LABEL}   Número do Motor:

Verificar a label Veículo de Pool:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Veículo de Pool: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[6]/td[3]
	END
	Element Should Contain  ${LABEL}   Veículo de Pool:

Verificar a label Ativo Fixo Imobilizado:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Ativo Fixo Imobilizado: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[7]/td[3]
	END
	Element Should Contain  ${LABEL}   Ativo Fixo Imobilizado:

Verificar a label Data Compra:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Compra: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]
	END
	Element Should Contain  ${LABEL}   Data Compra:

Verificar a label Data Venda:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Venda: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]
	END
	Element Should Contain  ${LABEL}   Data Venda:

Verificar a label Valor Compra:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Valor Compra: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]
	END
	Element Should Contain  ${LABEL}   Valor Compra:

Verificar a label Valor Venda:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Valor Venda: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]
	END
	Element Should Contain  ${LABEL}   Valor Venda:

Verificar a label Doc. Comprador:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Doc. Comprador: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]
	END
	Element Should Contain  ${LABEL}   Doc. Comprador:

Verificar a label Doc. Vendedor:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Doc. Vendedor: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]
	END
	Element Should Contain  ${LABEL}   Doc. Vendedor:

Verificar a label Comprador:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Comprador: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]
	END
	Element Should Contain  ${LABEL}   Comprador:

Verificar a label Vendedor:
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Vendedor: ')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]
	END
	Element Should Contain  ${LABEL}   Vendedor:

Verificar a label Frota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'FROTA')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   FROTA

Verificar a label: Data Inicial do Uso: (1)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Data Inicial do Uso:')])[1]
	Element Should Contain  ${LABEL}   Data Inicial do Uso:

Verificar a label: Número do Contrato de Locação: (2)
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Número do Contrato de Locação:')]
	Element Should Contain  ${LABEL}   Número do Contrato de Locação:

Verificar a label: Data Final do Contrato: (2)
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Final do Contrato: ')]
	Element Should Contain  ${LABEL}   Data Final do Contrato: 

Verificar a label: Tipo Responsável: (2)
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Responsável:')]
	Element Should Contain  ${LABEL}   Tipo Responsável:

Verificar a label: Valor do Contrato: (2)
	${LABEL}   Set Variable  xpath=//td[contains(text(),'	Valor do Contrato: ')]
	Element Should Contain  ${LABEL}   	Valor do Contrato: 

Verificar a label Usuários
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'USUÁRIOS')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[6]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   USUÁRIOS

Verificar a label: SEGURO
	${LABEL}   Set Variable  xpath=//td[contains(text(),'SEGURO')]
	Element Should Contain  ${LABEL}   SEGURO

Verificar a label: HISTÓRICOS
	${LABEL}   Set Variable  xpath=//td[contains(text(),'HISTÓRICOS')]
	Element Should Contain  ${LABEL}   HISTÓRICOS

Verificar a label: Histórico de Locais de Veículos
	${LABEL}   Set Variable  xpath=//b[contains(text(),'Histórico de Locais de Veículos')]
	Element Should Contain  ${LABEL}   Histórico de Locais de Veículos	

Verificar a label: OCORRÊNCIAS
	${LABEL}   Set Variable  xpath=//td[contains(text(),'OCORRÊNCIAS')]
	Element Should Contain  ${LABEL}   OCORRÊNCIAS	

Verificar a label: Infrações
	${LABEL}   Set Variable  xpath=//b[contains(text(),'Infrações')]
	Element Should Contain  ${LABEL}   Infrações	

Verificar a label: Dt./Hora Infr.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt./Hora Infr.')]
	Element Should Contain  ${LABEL}   Dt./Hora Infr.		

Verificar a label: Emp. Cond. (1)	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Emp. Cond.')]
	Element Should Contain  ${LABEL}   Emp. Cond.		

Verificar a label: Tipo	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}   Tipo				

Verificar a label: Matr.		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Matr.')]
	Element Should Contain  ${LABEL}   Matr.	

Verificar a label: Nome(1)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Nome')])[1]
	Element Should Contain  ${LABEL}   Nome			

Verificar a label: Ende.		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Ende.')]
	Element Should Contain  ${LABEL}   Ende.		

Verificar a label: Dt. Pag.		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Pag.')]
	Element Should Contain  ${LABEL}   Dt. Pag.		

Verificar a label: Vl. Pag.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Vl. Pag.')]
	Element Should Contain  ${LABEL}   Vl. Pag.		

Verificar a label: Dt. Reemb.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Reemb.')]
	Element Should Contain  ${LABEL}   Dt. Reemb.			

Verificar a label: Vl. Reemb.		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Vl. Reemb.')]
	Element Should Contain  ${LABEL}   Vl. Reemb.	

Verificar a label: Dt. Desc.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Desc.')]
	Element Should Contain  ${LABEL}   Dt. Desc.		

Verificar a label: Qtde. Parc.		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Qtde. Parc.')]
	Element Should Contain  ${LABEL}   Qtde. Parc.		

Verificar a label: Vl. Desc.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Vl. Desc.')]
	Element Should Contain  ${LABEL}   Vl. Desc.		

Verificar a label: N?m. do AIT	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'N?m. do AIT')]
	Element Should Contain  ${LABEL}   N?m. do AIT											

Verificar a label: Dt. Ind.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Ind.')]
	Element Should Contain  ${LABEL}   Dt. Ind.	

Verificar a label: Dt. Lim. Ind.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Lim. Ind.')]
	Element Should Contain  ${LABEL}   Dt. Lim. Ind.		

Verificar a label: Nome Ind.
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Nome Ind.')]
	Element Should Contain  ${LABEL}  Nome Ind.

Verificar a label: Reclamações
	${LABEL}   Set Variable  xpath=//b[contains(text(),'Reclamações')]
	Element Should Contain  ${LABEL}  Reclamações

Verificar a label: Data
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Data')]
	Element Should Contain  ${LABEL}  Data

Verificar a label: Hora(1)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Hora')])[2]
	Element Should Contain  ${LABEL}  Hora	

Verificar a label: Dt. Ocorrido	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Ocorrido')]
	Element Should Contain  ${LABEL}  Dt. Ocorrido	

Verificar a label: Hora Ocorrido	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Hora Ocorrido')]
	Element Should Contain  ${LABEL}   Hora Ocorrido	

Verificar a label: Emp. Cond. (2)	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Emp. Cond.')]
	Element Should Contain  ${LABEL}   Emp. Cond.			
	

Verificar a label: Tipo Cond. (1)	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Cond.')]
	Element Should Contain  ${LABEL}   Tipo Cond.		

Verificar a label: Matr. Cond.(1)		
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Matr. Cond.')])[1]
	Element Should Contain  ${LABEL}   Matr. Cond.				

Verificar a label: Nome(2)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Nome')])[3]			

Verificar a label: Desc. Reclamação		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Desc. Reclamação')]
	Element Should Contain  ${LABEL}   Desc. Reclamação		

Verificar a label: Qtde. Ptos.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Qtde. Ptos.')]
	Element Should Contain  ${LABEL}   Qtde. Ptos.		

Verificar a label: Tele.
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tele.')]
	Element Should Contain  ${LABEL}   Tele.

Verificar a label: Dt. Sinis.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt. Sinis.')]
	Element Should Contain  ${LABEL}   Dt. Sinis.	

Verificar a label: Hora(2)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Hora')])[4]
	Element Should Contain  ${LABEL}   Hora		

Verificar a label: Cidade
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Cidade')]
	Element Should Contain  ${LABEL}   Cidade	

Verificar a label: Bairro	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Bairro')]
	Element Should Contain  ${LABEL}   Bairro		

Verificar a label: Emp. Cond. (3)		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Emp. Cond.')]
	Element Should Contain  ${LABEL}   Emp. Cond.		

Verificar a label: Tipo Cond. (2)		
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Cond.')]
	Element Should Contain  ${LABEL}   Tipo Cond.		

Verificar a label: Nome(3)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Nome')])[4]
	Element Should Contain  ${LABEL}   Nome				

Verificar a label: Desc. Sinis.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Desc. Sinis.')]
	Element Should Contain  ${LABEL}   Desc. Sinis.		

Verificar a label: Valor
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Valor')]
	Element Should Contain  ${LABEL}   Valor			

Verificar a label: Ptos.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Ptos.')]
	Element Should Contain  ${LABEL}   Ptos.

Verificar a label: Situação
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Situação')]
	Element Should Contain  ${LABEL}   Situação		

Verificar a label: Reemb.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Reemb.')]
	Element Should Contain  ${LABEL}   Reemb.																
					
Verificar a label: Descon.
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Descon.')]
	Element Should Contain  ${LABEL}   Descon.	

Verificar a label: AGENDAMENTOS DE FROTA
	${LABEL}   Set Variable  xpath=//td[contains(text(),'AGENDAMENTOS DE FROTA')]
	Element Should Contain  ${LABEL}   AGENDAMENTOS DE FROTA	

Verificar a label: MOVIMENTAÇÕES DE FROTA
	${LABEL}   Set Variable  xpath=//td[contains(text(),'MOVIMENTAÇÕES DE FROTA')]
	Element Should Contain  ${LABEL}   MOVIMENTAÇÕES DE FROTA

Verificar a label: Dt./Hr Saída	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt./Hr Saída')]
	Element Should Contain  ${LABEL}   Dt./Hr Saída	

Verificar a label: Emp. Cond. (4)	 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Emp. Cond.')]
	Element Should Contain  ${LABEL}   Emp. Cond.	

Verificar a label: Tp. Cond.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tp. Cond.')]
	Element Should Contain  ${LABEL}   Tp. Cond.	

Verificar a label: Matr. Cond.(2)	
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Matr. Cond.')])[2]
	Element Should Contain  ${LABEL}   Matr. Cond.	

Verificar a label: Nome Cond.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Nome Cond.')]
	Element Should Contain  ${LABEL}   Nome Cond.		

Verificar a label: Port. Saída	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Port. Saída')]
	Element Should Contain  ${LABEL}   Port. Saída		

Verificar a label: Motivo
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Motivo')]
	Element Should Contain  ${LABEL}   Motivo	

Verificar a label: Destino
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Destino')]
	Element Should Contain  ${LABEL}   Destino			

Verificar a label: Quil. Saída	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Quil. Saída')]
	Element Should Contain  ${LABEL}   Quil. Saída	

Verificar a label: Dt./Hr Prev.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dt./Hr Prev.')]
	Element Should Contain  ${LABEL}   Dt./Hr Prev.		

Verificar a label: Qtde. Pass.	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Qtde. Pass.')]
	Element Should Contain  ${LABEL}   Qtde. Pass.													

Verificar a label: Kg Transp.
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Kg Transp.')]
	Element Should Contain  ${LABEL}   Kg Transp.
	
Verificar a label: Empresa Proprietária: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Empresa Proprietária: ')]
	Element Should Contain  ${LABEL}   Empresa Proprietária: 	

Verificar a label: Veículo Locado: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Veículo Locado: ')]
	Element Should Contain  ${LABEL}   Veículo Locado: 

Verificar a label: Data Inicial do Contrato: (1)
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Inicial do Contrato: ')]
	Element Should Contain  ${LABEL}   Data Inicial do Contrato: 

Verificar a label: Código da Outra Empresa: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Código da Outra Empresa: ')]
	Element Should Contain  ${LABEL}   Código da Outra Empresa: 

Verificar a label: Empresa Responsável: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Empresa Responsável: ')]
	Element Should Contain  ${LABEL}   Empresa Responsável: 

Verificar a label: Data Inicial do Uso: (2)
	${LABEL}   Set Variable  xpath=(//td[contains(text(),'Data Inicial do Uso: ')])[2]
	Element Should Contain  ${LABEL}   Data Inicial do Uso: 

Verificar a label: Número do Contrato de Locação: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Número do Contrato de Locação: ')]
	Element Should Contain  ${LABEL}   Número do Contrato de Locação: 

Verificar a label: Data Final do Contrato: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Final do Contrato: ')]
	Element Should Contain  ${LABEL}   Data Final do Contrato: 

Verificar a label: Tipo Responsável: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo Responsável: ')]
	Element Should Contain  ${LABEL}   Tipo Responsável: 

Verificar a label: Valor do Contrato: 
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Valor do Contrato: ')]
	Element Should Contain  ${LABEL}   Valor do Contrato: 

Verificar a label Seguro
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'SEGURO')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[8]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   SEGURO

Verificar a label Corretor 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Corretor')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[1]
	END
	Element Should Contain  ${LABEL}   Corretor 

Verificar a label Apólice 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Apólice')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[2]
	END
	Element Should Contain  ${LABEL}   Apólice 

Verificar a label Cobertura
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Cobertura')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	END
	Element Should Contain  ${LABEL}   Cobertura

Verificar a label Vigência
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Vigência')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	END
	Element Should Contain  ${LABEL}   Vigência

Verificar a label Validade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Validade')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	END
	Element Should Contain  ${LABEL}   Validade

Verificar a label Valor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Valor')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	END
	Element Should Contain  ${LABEL}   Valor

Verificar a label Descrição da Franquia
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Descrição da Franquia')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	END
	Element Should Contain  ${LABEL}   Descrição da Franquia

Verificar a label Observação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Observação')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[8]
	END
	Element Should Contain  ${LABEL}   Observação

Verificar a label Históricos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'HISTÓRICOS')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   HISTÓRICOS

Verificar a label Histórico de Locais de Veículos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Histórico de Locais de Veículos')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[11]/td/table/tbody/tr/td/b
	END
	Element Should Contain  ${LABEL}   Histórico de Locais de Veículos

Verificar a label Histórico de Crachás de Veículos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Histórico de Crachás de Veículos')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[13]/td/table/tbody/tr/td/b
	END
	Element Should Contain  ${LABEL}   Histórico de Crachás de Veículos

Verificar a label Ocorrências
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'OCORRÊNCIAS')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[13]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   OCORRÊNCIAS

Verificar a label Infrações
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Infrações')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/table/tbody/tr/td/b
	END
	Element Should Contain  ${LABEL}   Infrações

Verificar a label Reclamações
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Reclamações')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[16]/td/table/tbody/tr/td/b
	END
	Element Should Contain  ${LABEL}   Reclamações

Verificar a label Sinistros
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Sinistros')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/table/tbody/tr/td/b
	END
	Element Should Contain  ${LABEL}   Sinistros

Verificar a label Agendamentos de Frota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'AGENDAMENTOS DE FROTA')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[20]/td/table/tbody/tr[1]/td
	END
	Element Should Contain  ${LABEL}   AGENDAMENTOS DE FROTA

Verificar a label Movimentações de Frota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'MOVIMENTAÇÕES DE FROTA')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr[1]/td/div/table/tbody/tr/td/table/tbody/tr[21]/td/table/tbody/tr/td/table/tbody/tr[1]/td
	END
	Element Should Contain  ${LABEL}   MOVIMENTAÇÕES DE FROTA
