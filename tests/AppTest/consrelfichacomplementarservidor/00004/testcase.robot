*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelfichacomplementarservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Ficha Complementar Colaborador
${APPNAME}     consrelfichacomplementarservidor
${OBJETIVO}    Verificar todos os campos na tela Ficha Complementar Colaborador.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Ficha Complementar Colaborador
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Ficha Complementar Colaborador", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Ficha Complementar de Colaboradores
  E verificar a label Código da Empresa
  E verificar a label Nome da Empresa
  E verificar a label Tipo de Colaborador
  E verificar a label Matrícula
  E verificar a label Apelido
  E verificar a label Nome
  E verificar a label Endereço
  E verificar a label Número
  E verificar a label Complemento
  E verificar a label Bairro
  E verificar a label Cidade
  E verificar a label Estado
  E verificar a label CEP
  E verificar a label Telefone
  E verificar a label Ramal
  E verificar a label E-Mail Pessoal
  E verificar a label E-Mail Comercial
  E verificar a label Número RG
  E verificar a label Órgão Emissor RG
  E verificar a label Estado Emissor RG
  E verificar a label Data Expedição RG
  E verificar a label Número CNH
  E verificar a label Categoria CNH
  E verificar a label Data 1º CNH
  E verificar a label Vencimento CNH
  E verificar a label Número CTPS
  E verificar a label Série CTPS
  E verificar a label Nome do Pai
  E verificar a label Nome da Mãe
  E verificar a label Cidade de Nascimento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Ficha Complementar Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Ficha Complementar Colaborador

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Ficha Complementar de Colaboradores
  resource_consrelfichacomplementarservidor.Acessar Tela Ficha Complementar de Colaboradores

E verificar a label Código da Empresa
  resource_consrelfichacomplementarservidor.Verificar a label Código da Empresa

E verificar a label Nome da Empresa
  resource_consrelfichacomplementarservidor.Verificar a label Nome da Empresa

E verificar a label Tipo de Colaborador
  resource_consrelfichacomplementarservidor.Verificar a label Tipo de Colaborador

E verificar a label Matrícula
  resource_consrelfichacomplementarservidor.Verificar a label Matrícula

E verificar a label Apelido
  resource_consrelfichacomplementarservidor.Verificar a label Apelido

E verificar a label Nome
  resource_consrelfichacomplementarservidor.Verificar a label Nome

E verificar a label Endereço
  resource_consrelfichacomplementarservidor.Verificar a label Endereço

E verificar a label Número
  resource_consrelfichacomplementarservidor.Verificar a label Número

E verificar a label Complemento
  resource_consrelfichacomplementarservidor.Verificar a label Complemento

E verificar a label Bairro
  resource_consrelfichacomplementarservidor.Verificar a label Bairro

E verificar a label Cidade
  resource_consrelfichacomplementarservidor.Verificar a label Cidade

E verificar a label Estado
  resource_consrelfichacomplementarservidor.Verificar a label Estado

E verificar a label CEP
  resource_consrelfichacomplementarservidor.Verificar a label CEP

E verificar a label Telefone
  resource_consrelfichacomplementarservidor.Verificar a label Telefone

E verificar a label Ramal
  resource_consrelfichacomplementarservidor.Verificar a label Ramal

E verificar a label E-Mail Pessoal
  resource_consrelfichacomplementarservidor.Verificar a label E-Mail Pessoal

E verificar a label E-Mail Comercial
  resource_consrelfichacomplementarservidor.Verificar a label E-Mail Comercial

E verificar a label Número RG
  resource_consrelfichacomplementarservidor.Verificar a label Número RG

E verificar a label Órgão Emissor RG
  resource_consrelfichacomplementarservidor.Verificar a label Órgão Emissor RG

E verificar a label Estado Emissor RG
  resource_consrelfichacomplementarservidor.Verificar a label Estado Emissor RG

E verificar a label Data Expedição RG
  resource_consrelfichacomplementarservidor.Verificar a label Data Expedição RG

E verificar a label Número CNH
  resource_consrelfichacomplementarservidor.Verificar a label Número CNH

E verificar a label Categoria CNH
  resource_consrelfichacomplementarservidor.Verificar a label Categoria CNH

E verificar a label Data 1º CNH
  resource_consrelfichacomplementarservidor.Verificar a label Data 1º CNH

E verificar a label Vencimento CNH
  resource_consrelfichacomplementarservidor.Verificar a label Vencimento CNH

E verificar a label Número CTPS
  resource_consrelfichacomplementarservidor.Verificar a label Número CTPS

E verificar a label Série CTPS
  resource_consrelfichacomplementarservidor.Verificar a label Série CTPS

E verificar a label Nome do Pai
  resource_consrelfichacomplementarservidor.Verificar a label Nome do Pai

E verificar a label Nome da Mãe
  resource_consrelfichacomplementarservidor.Verificar a label Nome da Mãe

E verificar a label Cidade de Nascimento
  resource_consrelfichacomplementarservidor.Verificar a label Cidade de Nascimento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
