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
resource_report.Navegar no Relatório: Definições de Acesso Colaboradores

# SCREEN
Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consreldefinicoesdeacessoservidores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Definições de Acesso Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições de Acesso Colaboradores
  ${APPNAME}     Set Variable  consreldefinicoesdeacessoservidores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

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

Verificar o campo Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeemprcont

Verificar o campo Filial
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Filial
 	Element Attribute Value Should Be  ${CAMPO}   name   razasoci

Verificar o campo Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario

Verificar o campo Situação
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo Escala
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Escala
 	Element Attribute Value Should Be  ${CAMPO}   name   codiesca



#VERIFY

Verificar a label Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b
	Element Should Contain  ${LABEL}   Tipo Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Código Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Código Colaborador

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar a label Filial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	Element Should Contain  ${LABEL}   Filial

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	Element Should Contain  ${LABEL}   Local

Verificar a label Escala
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	Element Should Contain  ${LABEL}   Escala

Verificar a label Anti Dupla
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Anti
	Element Should Contain  ${LABEL}   Dupla

Verificar a label Int. Almoço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font/b
	Element Should Contain  ${LABEL}   Int.
	Element Should Contain  ${LABEL}   Almoço

Verificar a label Tempo Almoço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font/b
	Element Should Contain  ${LABEL}   Tempo 
	Element Should Contain  ${LABEL}   Almoço

Verificar a label Bloqueia por Falta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[13]/font/b
	Element Should Contain  ${LABEL}   Bloqueia por
	Element Should Contain  ${LABEL}   Falta

Verificar a label Faixa Horária
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[14]/font/b
	Element Should Contain  ${LABEL}   Faixa
	Element Should Contain  ${LABEL}   Horária

Verificar a label Cred.Acesso Refeitório
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[15]/font/b
	Element Should Contain  ${LABEL}   Cred.Acesso
	Element Should Contain  ${LABEL}   Refeitório

Verificar a label Grupo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[16]/font/b
	Element Should Contain  ${LABEL}   Grupo de
	Element Should Contain  ${LABEL}   Acesso

Verificar a label Utiliza Controle Biométrico
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[17]/font/b
	Element Should Contain  ${LABEL}   Utiliza Controle Biométrico

Verificar a label Aut.Agenda
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[18]/font/b
	Element Should Contain  ${LABEL}   Aut.
	Element Should Contain  ${LABEL}   Agenda

Verificar a label Aut.Saida
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[19]/font/b
	Element Should Contain  ${LABEL}   Aut.
	Element Should Contain  ${LABEL}   Saída

Verificar a label Aut.Hora Extra
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[20]/font/b
	Element Should Contain  ${LABEL}   Aut.Hora
	Element Should Contain  ${LABEL}   Extra

Verificar a label Verifica Afastamento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[21]/font/b
	Element Should Contain  ${LABEL}   Verifica Afastamento

Verificar a label Registra Ponto
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[22]/font/b
	Element Should Contain  ${LABEL}   Registra Ponto

Verificar a label Grupo de Rep
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[23]/font/b
	Element Should Contain  ${LABEL}   Grupo de Rep

Verificar a label Perm. Acesso Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[24]/font/b
	Element Should Contain  ${LABEL}   Perm. Acesso Visitante

Verificar a label Perm. Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[25]/font/b
	Element Should Contain  ${LABEL}   Perm. Acesso

Verificar a label Perm. Acesso Feriados
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[26]/font/b
	Element Should Contain  ${LABEL}   Perm. Acesso Feriados

Verificar a label Perm. Acesso Sábados
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[27]/font/b
	Element Should Contain  ${LABEL}   Perm. Acesso Sábados

Verificar a label Perm. Acesso Domingos
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[28]/font/b
	Element Should Contain  ${LABEL}   Perm. Acesso Domingos

Verificar a label Desbloqueio de Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[29]/font/b
	Element Should Contain  ${LABEL}   Desbloqueio de Crachá

Verificar a label Receber Visitas
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[30]/font/b
	Element Should Contain  ${LABEL}   Receber Visitas

Verificar a label Tipo de Terceiro
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[31]/font/b
	Element Should Contain  ${LABEL}   Tipo de Terceiro

Verificar a label Tipo de Contrato
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[32]/font/b
	Element Should Contain  ${LABEL}   Tipo de Contrato

Verificar a label Cpf
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[33]/font/b
	Element Should Contain  ${LABEL}   Cpf

Verificar a label Número do Contrato
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[34]/font/b
	Element Should Contain  ${LABEL}   Número do Contrato

Verificar a label Data Inicial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[35]/font/b
	Element Should Contain  ${LABEL}   Data Inicial

Verificar a label Data Final
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[36]/font/b
	Element Should Contain  ${LABEL}   Data Final
