*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendavisitante.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot
Resource        ../../../../resource/app/resource_cnsPermissoesAcessoPesquisa.robot
Resource        ../../../../resource/app/resource_cnscolab.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_consoutraempresa.robot
Resource        ../../../../resource/app/resource_cnsveiculos.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Edição)


*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Edição)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no campo: Busca Rapida e pesquisar por "Automação"
  E clicar no botão: Editar o registro
  E visualizar a tela: Agendamento de Visitante (Edição) 
  #Agendamento
  Então devo editar o campo: Data Validade * "15/01/2035"
  E editar o campo: Hora Validade * "20:00"
  E editar o campo: Tipo de Visita * "Outros"
  E clicar no botão: Buscar dados externos do campo: Código Grupo de Acesso *	
  E visualizar a tela: Grupo de Acesso (Consulta)
  E clicar no campo: Buscar dados externos e pequisar por "Automação" (Grupo)
  E clicar no botão: Selecionar esta linha (Grupo)
  #Visitante
  E novamente visualizar a tela: Agendamento de Visitante (Edição)
  E clicar no botão: Buscar dados externos do campo: Código Empresa Terceira	
  E visualizar a tela: Empresa Terceira (Consulta)
  E clicar no campo: Busca rápida e pesquisar por "Automação" (EMP_TERC)
  E clicar no botão: Selecionar esta linha (EMP_TERC)
  E mais uma vez visualizar a tela: Agendamento de Visitante (Edição)
  E editar o campo: Observação "Automação"
  #Veículo	
  E clicar no botão: buscar dados externo do campo: Código (Veículo)
  E visualziar a tela: Veículos (Consulta)
  E clicar no botão: Selecionar esta linha (Veículo)
  E de novo visualizar a tela: Agendamento de Visitante (Edição)   
  #Area Alfandegada - LDC - Esta falhando porque esta faltando o campo: Tipo do documento **Item aberto em 17/01/25
  #E editar o campo: Tipo de Documento "Identidade" (Area Alfandegada) 
  #E editar o campo: Número do Documento "14.928.196-1" (Area Alfandegada) 
  #E editar o campo: Função Exercida "Automação de testes" (Area Alfandegada) 
  #E editar o campo: Tipo Pessoa Física "OUTROS" (Area Alfandegada) 
  #E editar o campo: CPF "950.435.070-47" (Area Alfandegada)
  #E editar o campo: CEP "03731-123" (Area Alfandegada) 
  #E editar o campo: Endereço "Rua da glória" (Area Alfandegada) 
  #E editar o campo: Número "1118" (Area Alfandegada) 
  #E editar o campo: Complemento "Casa" (Area Alfandegada) 
 # E editar o campo: Bairro "Jardins" (Area Alfandegada) 
  #E editar o campo: Cidade "São Paulo" (Area Alfandegada) 
  #E editar o campo: Estado "São Paulo" (Area Alfandegada) 
  #Então devo clicar no botão: Salvar e verificar o pop-up de sucesso
  #E devo permanecer na tela: Visitante (Edição)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no campo: Busca Rapida e pesquisar por "${BUSCAR}"
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

E visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)

 #Agendamento
Então devo editar o campo: Data Validade * "${VALIDADE}"
  resource_frmagendavisitante.Preencher o campo Data de Validade da Visita "${VALIDADE}"

E editar o campo: Hora Validade * "${HORA}"
  resource_frmagendavisitante.Preencher o campo Hora Validade "${HORA}"

E editar o campo: Tipo de Visita * "${TIPO}"
  resource_frmagendavisitante.Preencher o campo Tipo de Visita "${TIPO}"

E clicar no botão: Buscar dados externos do campo: Código Grupo de Acesso *	
  resource_btn.Clicar No Botão Buscar dados externos (COD_GRUPO_ACESSO)

E visualizar a tela: Grupo de Acesso (Consulta)
  resource_cnsPermissoesAcessoPesquisa.Acessar Tela Consulta de Grupo de Acesso

E clicar no campo: Buscar dados externos e pequisar por "${BUSCAR}" (Grupo)
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Selecionar esta linha (Grupo)
  resource_btn.Clicar No Botão Selecionar esta linha

#Visitante
E novamente visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)

E clicar no botão: Buscar dados externos do campo: Código Empresa Terceira	
  resource_btn.Clicar No Botão Buscar dados externos (COD_EMPR_TERC)

E visualizar a tela: Empresa Terceira (Consulta)
  resource_consoutraempresa.Acessar Tela Consulta de Empresas Terceiras (Busca Externa)

E clicar no campo: Busca rápida e pesquisar por "${BUSCAR}" (EMP_TERC)
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Selecionar esta linha (EMP_TERC)
  resource_btn.Clicar No Botão Selecionar esta linha

E mais uma vez visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)

E editar o campo: Observação "${OBSERVACAO}"
  resource_frmagendavisitante.Preencher o campo Observação "${OBSERVACAO}"

#Veículo	
E clicar no botão: buscar dados externo do campo: Código (Veículo)
  resource_btn.Clicar No Botão Buscar dados externos (VEICULO)

E visualziar a tela: Veículos (Consulta)
  resource_cnsveiculos.Acessar Tela Cadastro Veículos - Consulta

E clicar no botão: Selecionar esta linha (Veículo)
  resource_btn.Clicar No Botão Selecionar esta linha

E de novo visualizar a tela: Agendamento de Visitante (Edição)   
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)

 #Area Alfandegada - LDC - Esta falhando porque esta faltando o campo: Tipo do documento **Item aberto em 17/01/25
#E preencher o campo: Tipo de Documento "${AREA_ALFA}" (Area Alfandegada) 
  #resource_frmvisitantecorp.Preencher o campo Tipo de Documento "${AREA_ALFA}" (Area Alfandegada)

#E editar o campo: Número do Documento "${IDENTIDADE}" (Area Alfandegada)  
  #resource_frmagendavisitante.Preencher o campo Número do Documento "${IDENTIDADE}" (Area Alfandegada) 
 
#E editar o campo: Função Exercida "${FUNCAO}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Função Exercida "${FUNCAO}" (Area Alfandegada) 

#E editar o campo: Tipo Pessoa Física "${TIP_PESSOA}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Tipo Pessoa Física "${TIP_PESSOA}" (Area Alfandegada) 

#E editar o campo: CPF "${CPF}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo CPF "${CPF}" (Area Alfandegada) 

#E editar o campo: CEP "${CEP}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo CEP "${CEP}" (Area Alfandegada) 

#E editar o campo: Endereço "${ENDERECO}" (Area Alfandegada)
  #resource_frmagendavisitante.Preencher o campo Endereço "${ENDERECO}" (Area Alfandegada) 

#E editar o campo: Número "${NUMERO}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Número "${NUMERO}" (Area Alfandegada)

#E editar o campo: Complemento "${COMP}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Complemento "${COMP}" (Area Alfandegada) 

#E editar o campo: Bairro "${BAIRRO}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Bairro "${BAIRRO}" (Area Alfandegada) 

#E editar o campo: Cidade "${CID}" (Area Alfandegada) 
  #resource_frmagendavisitante.Preencher o campo Cidade "${CID}" (Area Alfandegada) 

#E editar o campo: Estado "${ESTADO}" (Area Alfandegada)  
  #resource_frmagendavisitante.Preencher o campo Estado "${ESTADO}" (Area Alfandegada) 

#Então devo clicar no botão: Salvar e verificar o pop-up de sucesso
  #resource_btn.Clicar No Botão Salvar

#E devo permanecer na tela: Visitante (Edição)
  #resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)