*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrsaidafrota.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Entrega de Veículo - Cadastro
${APPNAME}     ctrsaidafrota
${OBJETIVO}    Verificar todos os campos na tela Entrega de Veículo - Cadastro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Entrega de Veículo - Cadastro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Quando eu visualizar a tela: Entrega de Veículo
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Entrega de Veículo - Cadastro
  E verificar o campo Veículo *
  E verificar o campo Data de Saída *
  E verificar o campo Hora de Saída *
  E verificar o campo Portaria de Saída *
  E verificar a label Condutor
  E verificar o campo Código
  E verificar a label Empresa
  E verificar a label Tipo
  E verificar a label Matricula
  E verificar a label Nome
  E verificar a label CNH
  E verificar a label Categoria
  E verificar a label Vencimento
  E verificar a label Aprovador
  E verificar o segundo campo Código
  E verificar a segunda label Empresa
  E verificar a segunda label Tipo
  E verificar a segunda label Matricula
  E verificar a segunda label Nome
  E verificar a label Vigilante da Saída
  E verificar o terceiro campo Código
  E verificar a terceira label Empresa
  E verificar a terceira label Tipo
  E verificar a terceira label Matricula
  E verificar a terceira label Nome
  E verificar o campo Motivo do Uso *
  E verificar o campo Destino *
  E verificar o campo Combustível de Saída
  E verificar o campo Quilometragem de Saída
  E verificar o campo Data Prevista do Retorno *
  E verificar o campo Hora Prevista do Retorno *
  E verificar o campo Quantidade de Passageiros
  E verificar o campo Kg Transportado
  E verificar o campo Observação
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando eu visualizar a tela: Entrega de Veículo
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Entrega de Veículo - Cadastro
  resource_ctrsaidafrota.Acessar Tela Entrega de Veículo - Cadastro

E verificar o campo Veículo *
  resource_ctrsaidafrota.Verificar o campo Veículo *

E verificar o campo Data de Saída *
  resource_ctrsaidafrota.Verificar o campo Data de Saída *

E verificar o campo Hora de Saída *
  resource_ctrsaidafrota.Verificar o campo Hora de Saída *

E verificar o campo Portaria de Saída *
  resource_ctrsaidafrota.Verificar o campo Portaria de Saída *

E verificar a label Condutor
  resource_ctrsaidafrota.Verificar a label Condutor

E verificar o campo Código
  resource_ctrsaidafrota.Verificar o campo Código

E verificar a label Empresa
  resource_ctrsaidafrota.Verificar a label Empresa

E verificar a label Tipo
  resource_ctrsaidafrota.Verificar a label Tipo

E verificar a label Matricula
  resource_ctrsaidafrota.Verificar a label Matricula

E verificar a label Nome
  resource_ctrsaidafrota.Verificar a label Nome

E verificar a label CNH
  resource_ctrsaidafrota.Verificar a label CNH

E verificar a label Categoria
  resource_ctrsaidafrota.Verificar a label Categoria

E verificar a label Vencimento
  resource_ctrsaidafrota.Verificar a label Vencimento

E verificar a label Aprovador
  resource_ctrsaidafrota.Verificar a label Aprovador

E verificar o segundo campo Código
  resource_ctrsaidafrota.Verificar o segundo campo Código

E verificar a segunda label Empresa
  resource_ctrsaidafrota.Verificar a segunda label Empresa

E verificar a segunda label Tipo
  resource_ctrsaidafrota.Verificar a segunda label Tipo

E verificar a segunda label Matricula
  resource_ctrsaidafrota.Verificar a segunda label Matricula

E verificar a segunda label Nome
  resource_ctrsaidafrota.Verificar a segunda label Nome

E verificar a label Vigilante da Saída
  resource_ctrsaidafrota.Verificar a label Vigilante da Saída

E verificar o terceiro campo Código
  resource_ctrsaidafrota.Verificar o terceiro campo Código

E verificar a terceira label Empresa
  resource_ctrsaidafrota.Verificar a terceira label Empresa

E verificar a terceira label Tipo
  resource_ctrsaidafrota.Verificar a terceira label Tipo

E verificar a terceira label Matricula
  resource_ctrsaidafrota.Verificar a terceira label Matricula

E verificar a terceira label Nome
  resource_ctrsaidafrota.Verificar a terceira label Nome

E verificar o campo Motivo do Uso *
  resource_ctrsaidafrota.Verificar o campo Motivo do Uso *

E verificar o campo Destino *
  resource_ctrsaidafrota.Verificar o campo Destino *

E verificar o campo Combustível de Saída
  resource_ctrsaidafrota.Verificar o campo Combustível de Saída

E verificar o campo Quilometragem de Saída
  resource_ctrsaidafrota.Verificar o campo Quilometragem de Saída

E verificar o campo Data Prevista do Retorno *
  resource_ctrsaidafrota.Verificar o campo Data Prevista do Retorno *

E verificar o campo Hora Prevista do Retorno *
  resource_ctrsaidafrota.Verificar o campo Hora Prevista do Retorno *

E verificar o campo Quantidade de Passageiros
  resource_ctrsaidafrota.Verificar o campo Quantidade de Passageiros

E verificar o campo Kg Transportado
  resource_ctrsaidafrota.Verificar o campo Kg Transportado

E verificar o campo Observação
  resource_ctrsaidafrota.Verificar o campo Observação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
