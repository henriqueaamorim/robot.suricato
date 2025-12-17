*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendavisitante.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Agendamento de Visitas - Visitante (Inclusão)
${APPNAME}     frmagendavisitante
${OBJETIVO}    Verificar todos os campos na tela Agendamento de Visita (Inclusão)


*** Test Cases ***
Testcase: Verificar todos os campos na tela Agendamento de Visita (Inclusão)
  [Tags]  VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Agendamento de Visitante (Inclusão)
  #Agendamento
  Então devo verificar o campo: Data Prevista *	
  E verificar o campo: Hora Prevista *	
  E verificar o campo: Tipo de Visita *	
  E verificar o campo: Data Validade *	
  E verificar o campo: Hora Validade *	
  E verificar o campo: Código Grupo de Acesso *	
  E verificar o campo: Grupo de Acesso	
  E verificar o campo: Autoriza Entrada com Veículo *	
  E verificar o campo: Crachá Automático	
  #Visitado	
  E verificar o campo: Código * (Visitado)
  E verificar o campo: Empresa * (Visitado)
  E verificar o campo: Tipo * (Visitado)
  E verificar o campo: Matrícula (Visitado)
  E verificar o campo: Nome * (Visitado)
  #Visitante
  E verificar o campo: Código * (Visitante)
  E verificar o campo: Tipo do Documento * (Visitante)
  E verificar o campo: Número do Documento * (Visitante)
  E verificar o campo: Nome * (Visitante)
  E verificar o campo: Telefone (Visitante)
  E verificar o campo: Código Empresa Terceira (Visitante)
  E verificar o campo: Empresa Terceira (Visitante)
  E verificar o campo: E-mail (Visitante)
  E verificar o campo: Observação (Visitante)
  #Veículo
  E verificar o campo: Código (Veículo)
  E verificar o campo: Placa (Veículo)
  E verificar o campo: Cor (Veículo)
  E verificar o campo: Marca (Veículo)
  E verificar o campo: Modelo (Veículo)
  #Área Alfandegada LDC
  #E verificar o campo: Tipo do Documento
  E verificar o campo: Número do Documento	
  E verificar o campo: Função Exercida	
  E verificar o campo: Tipo Pessoa Fisica	
  E verificar o campo: Número do CPF	
  E verificar o campo: CEP
  E verificar o campo: Endereço
  E verificar o campo: Número
  E verificar o campo: Complemento
  E verificar o campo: Bairro
  E verificar o campo: Cidade
  E verificar o campo: Estado
  E verificar se existe o campo Teste 

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Agendamento de Visitante (Inclusão)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)

#Agendamento
Então devo verificar o campo: Data Prevista *	
  resource_frmagendavisitante.E verificar o campo Data Prevista

E verificar o campo: Hora Prevista *	
  resource_frmagendavisitante.E verificar o campo Hora Prevista

E verificar o campo: Tipo de Visita *	
  resource_frmagendavisitante.E verificar o campo Tipo de Visita

E verificar o campo: Data Validade *	
  resource_frmagendavisitante.E verificar o campo Data Validade

E verificar o campo: Hora Validade *	
  resource_frmagendavisitante.E verificar o campo Hora Validade

E verificar o campo: Código Grupo de Acesso *	
  resource_frmagendavisitante.E verificar o campo Código Grupo de Acesso

E verificar o campo: Grupo de Acesso	
  resource_frmagendavisitante.E verificar o campo Grupo de Acesso	

E verificar o campo: Autoriza Entrada com Veículo *	
  resource_frmagendavisitante.E verificar o campo Autoriza Entrada com Veículo

E verificar o campo: Crachá Automático	
  resource_frmagendavisitante.E verificar o campo Crachá Automático

#Visitado	
E verificar o campo: Código * (Visitado)
  resource_frmagendavisitante.E verificar o campo Código (Visitado)

E verificar o campo: Empresa * (Visitado)
  resource_frmagendavisitante.E verificar o campo Empresa (Visitado)

E verificar o campo: Tipo *(Visitado)
  resource_frmagendavisitante.E verificar o campo Tipo (Visitado)

E verificar o campo: Matrícula (Visitado)
  resource_frmagendavisitante.E verificar o campo Matrícula (Visitado)

E verificar o campo: Nome * (Visitado)
  resource_frmagendavisitante.E verificar o campo Nome (Visitado)

#Visitante
E verificar o campo: Código * (Visitante)
  resource_frmagendavisitante.E verificar o campo Código (Visitante)

E verificar o campo: Tipo do Documento * (Visitante)
  resource_frmagendavisitante.E verificar o campo Tipo do Documento (Visitante)

E verificar o campo: Número do Documento * (Visitante)
  resource_frmagendavisitante.E verificar o campo Número do Documento (Visitante)

E verificar o campo: Nome * (Visitante)
  resource_frmagendavisitante.E verificar o campo Nome (Visitante)

E verificar o campo: Telefone (Visitante)
  resource_frmagendavisitante.E verificar o campo Telefone (Visitante)

E verificar o campo: Código Empresa Terceira (Visitante)
  resource_frmagendavisitante.E verificar o campo Código Empresa Terceira (Visitante)

E verificar o campo: Empresa Terceira (Visitante)
  resource_frmagendavisitante.E verificar o campo Empresa Terceira (Visitante)

E verificar o campo: E-mail (Visitante)
  resource_frmagendavisitante.E verificar o campo E-mail (Visitante)

E verificar o campo: Observação (Visitante)
  resource_frmagendavisitante.E verificar o campo Observação (Visitante)

#Veículo
E verificar o campo: Código (Veículo)
  resource_frmagendavisitante.E verificar o campo Código (Veículo)

E verificar o campo: Placa (Veículo)
  resource_frmagendavisitante.E verificar o campo Placa (Veículo)

E verificar o campo: Cor (Veículo)
  resource_frmagendavisitante.E verificar o campo Cor (Veículo)

E verificar o campo: Marca (Veículo)
  resource_frmagendavisitante.E verificar o campo Marca (Veículo)

E verificar o campo: Modelo (Veículo)
  resource_frmagendavisitante.E verificar o campo Modelo (Veículo)

#Área Alfandegada LDC
#E veificar o campo: Tipo do Documento 
  #resource_frmagendavisitante.E verificar o campo

E verificar o campo: Número do Documento	
  resource_frmagendavisitante.E verificar o campo Número do Documento	

E verificar o campo: Função Exercida	
  resource_frmagendavisitante.E verificar o campo Função Exercida

E verificar o campo: Tipo Pessoa Fisica	
  resource_frmagendavisitante.E verificar o campo Tipo Pessoa Fisica

E verificar o campo: Número do CPF	
  resource_frmagendavisitante.E verificar o campo Número do CPF

E verificar o campo: CEP
  resource_frmagendavisitante.E verificar o campo CEP

E verificar o campo: Endereço
  resource_frmagendavisitante.E verificar o campo Endereço

E verificar o campo: Número
  resource_frmagendavisitante.E verificar o campo Número

E verificar o campo: Complemento
  resource_frmagendavisitante.E verificar o campo Complemento

E verificar o campo: Bairro
  resource_frmagendavisitante.E verificar o campo Bairro
 
E verificar o campo: Cidade
  resource_frmagendavisitante.E verificar o campo Cidade

E verificar o campo: Estado
  resource_frmagendavisitante.E verificar o campo Estado

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}" 
  