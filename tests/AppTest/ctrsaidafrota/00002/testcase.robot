*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrsaidafrota.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Entrega de Veículo.

*** Test Cases ***

Testcase: Cadastrar uma Entrega de Veículo
  [Tags]  REGISTER  POLYVALENT
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Quando eu visualizar a tela: Entrega de Veículo
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Entrega de Veículo - Cadastro
  E preencher o campo Veículo "3"
  E preencher o campo Portaria de Saída "1"
  E preencher o campo Código na área Condutor "2"
  E preencher o campo Código na área Aprovador "4"
  E preencher o campo Código na área Vigilante da Saída "9"
  E preencher o campo Motivo do Uso "1"
  E preencher o campo Destino "Destino"
  E selecionar uma opção no campo Combustível de Saída "Cheio"
  E preencher o campo Quilometragem de Saída "5000"
  E preencher o campo Data Prevista do Retorno "14/04/2022"
  E preencher o campo Hora Prevista do Retorno "1200"
  E preencher o campo Quantidade de Passageiros "3"
  E preencher o campo Kg Transportado "20"
  E preencher o campo Observação "Observação"
  E clicar no botão: Gravar
  Então devo visualizar a tela: Entrega de Veículo

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando eu visualizar a tela: Entrega de Veículo
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Entrega de Veículo - Cadastro
  resource_ctrsaidafrota.Acessar Tela Entrega de Veículo - Cadastro

E preencher o campo Veículo "${VEICULO}"
  resource_ctrsaidafrota.Preencher o campo Veículo "${VEICULO}"

E preencher o campo Portaria de Saída "${PORTARIA}"
  resource_ctrsaidafrota.Preencher o campo Portaria de Saída "${PORTARIA}"

E preencher o campo Código na área Condutor "${CODIGO}"
  resource_ctrsaidafrota.Preencher o campo Código na área Condutor "${CODIGO}"

E preencher o campo Código na área Aprovador "${CODIGO}"
  resource_ctrsaidafrota.Preencher o campo Código na área Aprovador "${CODIGO}"

E preencher o campo Código na área Vigilante da Saída "${CODIGO}"
  resource_ctrsaidafrota.Preencher o campo Código na área Vigilante da Saída "${CODIGO}"

E preencher o campo Motivo do Uso "${MOTIVO}"
  resource_ctrsaidafrota.Preencher o campo Motivo do Uso "${MOTIVO}"

E preencher o campo Destino "${DESTINO}"
  resource_ctrsaidafrota.Preencher o campo Destino "${DESTINO}"

E selecionar uma opção no campo Combustível de Saída "${COMBUSTIVEL}"
  resource_ctrsaidafrota.Selecionar uma opção no campo Combustível de Saída "${COMBUSTIVEL}"

E preencher o campo Quilometragem de Saída "${KM}"
  resource_ctrsaidafrota.Preencher o campo Quilometragem de Saída "${KM}"

E preencher o campo Data Prevista do Retorno "${DATA}"
  resource_ctrsaidafrota.Preencher o campo Data Prevista do Retorno "${DATA}"

E preencher o campo Hora Prevista do Retorno "${HORA}"
  resource_ctrsaidafrota.Preencher o campo Hora Prevista do Retorno "${HORA}"

E preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"
  resource_ctrsaidafrota.Preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"

E preencher o campo Kg Transportado "${KG}"
  resource_ctrsaidafrota.Preencher o campo Kg Transportado "${KG}"

E preencher o campo Observação "${OBSERVACAO}"
  resource_ctrsaidafrota.Preencher o campo Observação "${OBSERVACAO}"

E clicar no botão: Gravar
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Entrega de Veículo
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo