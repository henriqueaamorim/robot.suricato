# GENERAL

## TRELLO

**Acesso:** https://trello.com/b/GJI5lBoV/rb

O board RB foi desenvolvido com o intuito de termos mais controle sobre cada parte do projeto RB, no momento ele possui quatro listas, sendo elas "Aplicações", "Módulos", "Navegadores" e "A fazer".


Na lista **Aplicações** temos listadas todas as aplicações do Suricato, nesta lista, é possível termos controle absoluto sobre o estado de cada aplicação. Para ela, criamos labels de controle, sendo elas "RB", "BE", "Manutenção" e "Aguardar".

Aplicações com a label **"RB"**, são aplicações que possuem uma rotina de teste criada e já estão registradas dentro da pasta "media" do projeto. Toda aplicação registrada possui em si um anexo, que leva ao board **"DM"**, através do anexo é possível identificar a qual tela do Suricato a aplicação pertence. Ao clicar no anexo, você será redirecionado ao board **"DM"** diretamente no card da aplicação correspondente.

Aplicações com a label **"BE"**, são aplicações específicas que só podem ser acessadas através de um botão de **"Busca Externa"**. O botão de **"Busca Externa"** sempre estará especificado no campo **"Description"**.

Aplicações com a label **"Manutenção"**, são aplicações que por algum motivo necessitam de manutenção. O motivo sempre estará especificado no campo **"Activity"**.

Aplicações com a label **"Aguardar"**, são aplicações que no momento estão indisponíveis, necessitando de correções do time de desenvolvimento. O motivo sempre estará especificado no campo **"Activity"**.

Aplicações sem labels, são aplicações que ainda não registramos, sabemos de sua existência mas não localizamos dentro do Suricato.

A lista **Módulos** possui todos os módulos de atualização do projeto, sendo eles:

* DOC - Atualizações referentes as screenshots das aplicações do Suricato obtidas com a execução das rotinas de teste.


* VID - Atualizações referentes a gravação dos vídeos instrutivos de acesso ao Suricato.


* API - Atualizações referentes a criação e manutenção das massas de dados utilizadas para popular o Suricato.

 
* TST - Atualizações referentes a criação, alteração e manipulação dos arquivos de testcase.


* MAN - Atualizações referentes a manutenção geral, como inclusão de novos navegadores, alteração em estrutura de pastas, etc...


* ISS - Atualizações referentes aos testes criados para tarefas do Redmine.

## BROWSERS
A lista **"Navegadores"** contém os navegadores compatíveis que executam as rotinas de teste, sendo eles:

* Google Chrome
* Mozila Firefox 
* Microsoft Edge
* Internet Explorer (Não compatível com o modo *"DOC"*)

É possível alterar o navegador a ser utilizado ao passar a seguinte instrução na linha de comando:

`
COMMAND: python main.py robot -v BROWSER:<navegador> .\test\AppTest
`

O arquivo *"settings.py"* localizado dentro da pasta **"superutil"** contém toda a configuração para os navegadores.

A lista **"A fazer"**, fica em posse de tarefas a serem cumpridas no projeto.

## Configurações Globais

O arquivo *"resource_login"* contém todas as variáveis que usamos para configurar o modo que o Robot irá executar as rotinas, sendo elas:

* ${SERVER} - Variável que define o servidor a ser acessado. Por padrão o servidor utilizado é 172.16.14.249, sendo ele o mais recomendado para se executar as rotinas por conter uma grande quantidade de registros cadastrados, desta forma, menos suscetível a erros.


* ${BROWSER} - Variável que define o navegador a ser utilizado. Por padrão o navegador utilizado é o Mozilla Firefox, sendo ele o mais recomendado para se executar as rotinas por apresentar maior compatíbilidade com as telas do Suricato.


* ${USERNAME} - Variável que define o usuário que irá acessar o Suricato. Por padrão o usuário utilizado é o ADMIN, sendo ele o mais recomendado para se executar as rotinas por conter o mais alto nível de autorização.


* ${PASSWORD} - Variável que contem a senha para o acesso do usuário escolhido.


* ${LANGUAGE} - Variável que define qual o idioma do Suricato. Idiomas disponíveis: PT-BR (Padrão), EN-US, ES-ES.


* ${MODE} - Variável que define o modo em que as rotinas serão executadas. Modos disponíveis: TST (Modo utilizado para Testes), DOC (Modo utilizado para tirar prints das telas do Suricato), VID (Modo que grava toda a execução da rotina)


* ${REQ} - Variável que define se o modo REQ será executado. Por padrão seu valor é FALSE.


* ${ISSUE} - Variável criada para os testes relacionados ao RedMine, por padrão seu valor é FALSE, quando seu valor for alterado para TRUE o modo DOC não será mais executado no modo headless.


* ${TYPE} - Variável que define a extensão do arquivo "suricato", utilizado para definir a url de acesso.


* ${URL} - Variável que define a URL de acesso ao Suricato.


Todas as variáveis podem ser alteradas através da linha de comando antes de se executar as rotinas, utilizando o comando **"-v"** e em seguida a variável a ser alterada. 

*Exemplo de comando para alterar o servidor:*

`
COMMAND: python main.py robot -v SERVER:172.16.14.248 .\tests\AppTest
`

*Exemplo de comando para alterar o navegador:*

`
COMMAND: python main.py robot -v BROWSER:CHROME .\tests\AppTest
`

*Exemplo de comando para alterar o modo de execução:*

`
COMMAND: python main.py robot -v MODE:VID .\tests\AppTest
`

*Exemplo de comando para ativar o modo REQ:*

`
COMMAND: python main.py robot -v REQ:TRUE .\tests\AppTest
`

## TAGS
As tags são úteis para executarmos somente casos de testes que contenham aquela tag, para que seja possível seu uso, é necessário passar o seguinte parâmetro na linha de comando:

`
COMMAND: python main.py robot -i <TAG> .\tests\AppTest
`

É possivel evitar testes que tenham uma tag ao passar o parâmetro -e <nome_da_tag>, desta forma é feito uma espécie de filtro, onde serão executados testes que contenham a primeira tag e a segunda não.

`
COMMAND: python main.py robot -i <TAG> -e <TAG> .\tests\AppTest
`

Tags utilizadas nos casos de testes: 

* -i PRINT: Executa testcases que tem a função de registrar as aplicações; 
* -i REGISTER: Executa testcases que realizam cadastros diversos; 
* -i DELETE: Executa testcases que excluem registros diversos;
* -i ALTER: Executa testcases que alteram registros diversos;
* -i POPULATED: Executa testcases em ambientes populados, ou seja, banco de dados com registros já existentes;
* -i UNPOPULATED: Executa testcases onde o ambiente não é populado, ou seja, banco de dados sem registros pré-existentes;
* -i ISSUES: Executa testcases que reproduzem erros das tarefas do Redmine;
* -i POLYVALENT: Executa testcases que funcionam tanto em ambientes populados (com registros no banco de dados) e ambientes despopulados (banco de dados vazio).
* -i VERIFY: Executa testcases que verificam todos os campos e labels que existem na tela, também verifica se o campo "teste" é visível, caso seja, será gerado um arquivo dentro da pasta results/logs contendo o nome da aplicação e da tela onde o campo "teste" foi localizado.


# MODE REQ

Algumas aplicações do Suricato necessitam que pré-requisitos sejam cumpridos para que seja possível executar sua rotina de teste com êxito. Para isso, implementamos o modo **"REQ"**, com ele é possível criar uma nova rotina que cumpra os requisitos necessários, e caso haja falha o teste será automaticamente pulado.

Por padrão o modo **REQ** é desativado, para ativá-lo é necessário alterar o valor de sua variável **"${REQ}"**, que está localizada dentro do arquivo *"resource_login.robot"*, o modo mais simples e recomendado é passar a seguinte instrução na linha de comando:

`
COMMAND: python main.py robot -v REQ:TRUE .\tests\AppTest
`

Feito isso, a rotina de requisitos será executada antes da rotina de teste. O arquivo de requisitos recebe o nome de *"requirements.robot"* e é alocado na mesma do testcase.robot indicado por sua numeração.

Aprofundando mais sobre o funcionamento dos arquivos de requirements, a variável **"{REQ}"** ao receber o valor *TRUE*, dará início a execução da keyword **"Requirements"** que por sua vez dará início a rotina de requisitos, o retorno (que será um valor booleano, *TRUE* caso a rotina de requisitos obtenha sucesso, e *FALSE* caso falhe) será armazenado dentro da variável **"{status}"**. 

Em seguida a keyword **"Verificar requisito"** irá receber como parâmetro a variável **"{status}"**, então ela irá realizar a verificação, caso o valor seja *FALSE* o navegador será fechado e o teste terá seu resultado como `SKIP`, sinalizando que algum erro ocorreu durante a rotina de requisitos, caso o valor seja *TRUE* o Robotframework seguirá normalmente para a rotina de teste.


# MODE DOC

Visando um controle mais refinado sobre as novas implementações e correções do projeto, foram criados módulos específicos para cada tipo de atualização que desejamos realizar, este tópico tem como objetivo esclarecer o funcionamento do módulo DOC.

O módulo DOC é reservado para atualizações referentes a screenshots das aplicações do Suricato obtidas com a execução das rotinas de teste. Existem diferentes formas de se executar uma rotina, a mais recomendada é digitar a seguinte linha de comando no prompt:

`
COMMAND: python main.py robot -v MODE:DOC .\tests\AppTest
`

No arquivo *"resource_login.robot"* estão todas as variáveis que definem quais serão as configurações que o RobotFramework irá executar a rotina (como, por exemplo, qual será o navegador utilizado na execução). A variável **${MODE}** define o modo que será executada a rotina, por padrão o valor atribuído a ela é "TST", que é um acrônimo para "Teste", ou seja, a rotina será executada em modo de teste em uma nova guia do navegador que ao final será fechada. Para que as screenshots sejam obtidas é necessário alterar o valor da variável para "DOC", a maneira mais simples e recomendada de realizar essa alteração é adicionar na linha de comando a seguinte instrução:

`
COMMAND: python main.py robot -v MODE:DOC .\tests\AppTest
`

No modo **DOC**, o navegador será executado em modo _Headless_, ou seja, em segundo plano, e irá realizar a captura das telas definidas na rotina, por padrão, a dimensão da imagem capturada é 1300px x 3000px (sendo também a dimensão das imagens base). O arquivo *"settings.py"* localizado na pasta **"superutil"** é responsável pela configuração da resolução das imagens.

Todas as suites que possuem o objetivo de registrar a tela acessada que contém a tag `-i PRINT`. É possível filtrar quais suites serão executadas adicionando na linha de comando a seguinte instrução:

`
COMMAND: python main.py robot -i PRINT -v MODE:DOC .\test\AppTest
`

Ao término da rotina, o arquivo *"resource_utils.robot"*, através da keyword **"Remover Caracteres Especiais"** realizará o tratamento do nome da screenshot, removendo caracteres indevidos como espaçamentos e caracteres especiais. Logo após, através da keyword **"Set Screenshot Directory"**, a imagem será enviada para o diretório:

`
FILE: ./results/media/<nome_aplicação>/<idioma_aplicação>/DOC/<navegador_utilizado>
`

Caso o diretório não exista a rotina o criará em tempo de execução. Em seguida, será salva com o nome:

`
FILE: base_<nome_aplicação>_<nome_tela>_VX.png
`

Então a keyword `Tratar Imagem` dará inicio ao tratamento da imagem através do OpenCV, que irá calcular qual o melhor dimensionamento para que a imagem não tenha conteúdos dispensáveis e cortar-lá em seguida. A imagem tratada pelo OpenCV terá um rodapé incrementado automaticamente contendo a data em que a rotina foi executada. Após esse processo, ela será salva no diretório da aplicação correspondente, tendo seu nome alterado para:

`
FILE: opencv_<nome_aplicação>_<nome_tela>_VX.png
`

As rotinas responsáveis por realizar todos os tratamentos necessários, tanto de imagem quanto de caracteres, estão localizadas dentro da pasta **superutil/opencv**, sendo elas:

* check_header.py *(Responsável por remover o cabeçalho da imagem)*
* opencv_crop.py *(Responsável por realizar o tratamento da imagem)*
* tools.py *(Responsável por realizar o tratamento dos caracteres)*

O navegador mais recomendado para execução das rotinas é o Mozilla Firefox, por apresentar menos erros de formatação nas páginas das aplicações do Suricato, já o Internet Explorer se mostrou incompátivel com o modo *DOC*, sendo melhor evitá-lo caso queira executar a rotina sem problemas. 




# API DATAMASS

### Configuração do Servidor:

Para subir o endpoint, os seguintes requisitos foram implementados:

- Versão do PHP: 8.0.13
- Versão do XAMPP: 8.0.13

Requisitos para o PHP se conectar corretamente com o SGBD SQL Server:

- No diretório _C:\xampp\php\ext_ colocar as DLLs:
  - php_pdo_sqlsrv_80_ts_x64.dll
  - php_sqlsrv_80_ts_x64.dll


- Editar o arquivo C:\xampp\php\php.ini e adicionar as linhas a seguir acima da linha 921:
  - extension=php_pdo_sqlsrv_80_ts_x64.dll
  - extension=php_sqlsrv_80_ts_x64.dll


- De preferência, utilizar o ODBC Driver 17 for SQL Server.

Atualmente a API de massa de dados para o uso com o projeto se dispõe das seguintes abstrações de entidades:

- PERSON
- COMPANY

### ENPOINT: PERSON

A entidade pessoa pode ser usada para os seguintes tipos de cadastros no Suricato:

- Empregado;
- Terceiro;
- Parceiro;
- Visitante;
- Candidato.

**Rotas:**

- http://172.16.14.177:8080/RB/data/sel.person.php
 
- http://172.16.14.177:8080/RB/data/sel.person.php?type=Colaborador

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Empregado

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Terceiro

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Parceiro

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Visitante

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Candidato

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Fornecedor

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Contribuidor

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Consumidor

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Cliente

- http://172.16.14.177:8080/RB/data/sel.person.php?type=Gestor

Ao não informar o valor _type_ na URL, o valor retornado para TYPE_PERSON será aleatório.

A massa de dados para pessoa acompanha 5 milhões de registros com os seguintes atributos:

| ATRIBUTO | INFORMAÇÕES | CONSTRAINT |
| --- | --- | --- |
| ID | Pode ser usado como matrícula de colaboradores| PK |
| TYPE_PERSON | Pode assumir 11 valores diferentes: <br> <br> - Colaborador <br> - Empregado <br> - Terceiro <br> - Parceiro <br> - Visitante <br> - Candidato <br> - Fornecedor <br> - Contribuidor <br> - Consumidor <br> - Cliente <br> - Gestor | NOT NULL |
|GENDER | Assume valores 'M' ou 'F' de acordo com FIRSTNAME | NOT NULL |
| FULLNAME | Composto pelo último nome de FATHERNAME e nome do meio por MOTHERNAME onde seu FIRSTNAME é composto por 50% de chances por assumir GENDER 'M' ou 'F' | NOT NULL |
| FIRSTNAME | Composto pela primeita string de FULLNAME | NOT NULL |
|MIDDLENAME| Valor de FULLNAME removido o FIRSTNAME e o LASTNAME | NOT NULL |
|LASTNAME| Composto pela última string de FULLNAME | NOT NULL |
| FATHERNAME | Igualmente ao FULLNAME descencendo seu último nome | NOT NULL |
| MOTHERNAME | Igualmente ao FULLNAME descendendo seu nome do meio | NOT NULL |
|OCCUPATION | Cargo atuante entre 15 mil opções do CBO (Classificação Brasileira de Ocupações)| NOT NULL |
| BIRTH_DATE | Data randômica que está em um intervalo determinado de 01/01/1940 a 31/12/2010. Desta forma, abre opcionalidades para registros de entidades que completarão sua maioridade até ao máximo no ano de 2028 | NOT NULL |
| MAJOR_DATE | Data de aniversário acrescido 18 anos de BIRTH_DATE, alcançando a maioridade civil | NOT NULL |
| CONTRACT_DATE | Data randômica no intervalo assumido entre sua maioridade e a data de 31/12/2028 | NOT NULL |
|BLOOD | Tipo sanguíneo atribuído à pessoa | NOT NULL |
| WEIGHT | Peso atribuído à pessoa | NOT NULL | 
| HEIGHT | Altura atribuída à pessoa | NOT NULL |
| CEP | Válido de acordo com a base de dados dos Correios no ano de 2014 | NOT NULL |
| STATE | Unidade Federativa de acordo com o CEP | NOT NULL |
| CITY | Município de acordo com STATE | NOT NULL |
| NEIGHBORHOOD | Bairro de acordo com CITY | NOT NULL |
| ADDRESS | Logradouro de acordo com as informações de endereço a partir de CEP| NOT NULL |
| NUMBER | Número do endereço sem relação com a base de dados dos correios, assumindo valor entre 0 e 9999 | NOT NULL |
| COMPLEMENT | Complemento de acordo com o endereço na base de dados dos Correios. Em caso de NULL, atribuído à coluna uma informação de complemento fictício | NOT NULL |
| EMAIL_COMMERCIAL_LONG | E-mail profissional com domínio atribuído a uma empresa, associação ou orgão real. É a versão longa do e-mail particular visando utilizar mais separadores e apresentar a maior parte do FULLNAME | NOT NULL `UNIQUE` |
| EMAIL_COMMERCIAL_SHORT | Similar ao EMAIL_COMMERCIAL_LONG, mas em sua construção é utilizado o FIRSTNAME, LASTNAME e domínio real | NOT NULL `UNIQUE` |
| EMAIL_PARTICULAR_LONG | E-mail pessoal visando utilizar mais seperadores e maior parte do FULLNAME. Pode assumir domínios tais como: @gmail, @hotmail.com | NOT NULL `UNIQUE` |
| EMAIL_PARTICULAR_SHORT | Similar ao EMAIL_PARTICULAR_LONG, mas em sua construção é utilizado o FIRSTNAME, LASTNAME| NOT NULL `UNIQUE` |
| PASSWORD | Senha sem princípio de seed para formação | NOT NULL |
| CELLPHONE | Celular com DDD de acordo com CITY com valor assumido entre 924000300 e 939999999 | NOT NULL `UNIQUE`| 
| TELEPHONE | Telefone fixo com DDD de acordo com CITY com valor assumido entre 24000300 e 39999999 | NOT NULL `UNIQUE`| 
| CPF | CPF com máscara gerado de acordo com STATE e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| PIS | PIS com máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| RG | RG com máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| CNH | CNH sem máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| RCN | RCN (Registro Civil de Nascimento) com máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| VOTER_TITLE | Título de Eleitor sem máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 


**Integração:**

Para consumir o retorno do endpoint, é necessário implementar no testcase os seguintes comandos:

`
Library         ../../../../api/data/client/person.py
`

`
KEYWORD: Gerar Nova Pessoa    <TYPE_PERSON>
`

As seguintes keywords estarão disponíveis para uso:

- matrícula
- tipo pessoa
- gênero
- primeiro nome
- nome do pai
- nome da mãe
- sobrenome completo
- nome completo
- último nome
- nome do meio
- ocupação
- data de nascimento
- data para maioridade
- data de contrato
- tipo sanguíneo
- peso
- altura
- cep
- estado
- cidade
- bairro
- endereço
- número
- complemento
- email profissional longo
- email profissional
- email particular longo
- email particular
- senha
- celular
- telefone fixo
- CPF
- PIS
- RG
- CNH
- RCN
- título de eleitor


### ENDPOINT: COMPANY

A entidade empresa pode ser usada para os seguintes tipos de cadastros no Suricato:

- Empresa;
- Empresa Terceira.


**Rotas:**

- http://172.16.14.177:8080/RB/data/sel.company.php?type=LTDA

- http://172.16.14.177:8080/RB/data/sel.company.php?type=SA

- http://172.16.14.177:8080/RB/data/sel.company.php?type=ME

- http://172.16.14.177:8080/RB/data/sel.company.php?type=MEI

- http://172.16.14.177:8080/RB/data/sel.company.php?type=EIRELI

- http://172.16.14.177:8080/RB/data/data/sel.company.php?type=SLU

- http://172.16.14.177:8080/RB/data/sel.company.php?type=EPP

Ao não informar o valor _type_ na URL, o valor retornado para TYPER será aleatório.

A massa de dados para empresa acompanha 55 mil registros com os seguintes atributos:

| ATRIBUTO | INFORMAÇÕES | CONSTRAINT |
| --- | --- | --- |
| ID | Pode ser usado como matrícula da empresa | PK |
| TYPER | Pode assumir 7 valores diferentes: <br> <br> - EPP <br> - LTDA <br> - SA <br> - ME <br> - EIRELI <br> - MEI <br> - SLU | NOT NULL |
| COUNTRY | País de origem da empresa | NOT NULL |
| NAME | Nome de registro da empresa que pode conter o seu tipo e o nome da cidade situada, similar à franqueados | NOT NULL `UNIQUE` |
| BRAND | Atributo utilizado como alias aos nome da empresa e pode ser usado como nome fantasia | NOT NULL |
| FOUNDATION | Data de fundação da empresa podendo ser usado como data de abertura | NOT NULL |
| SIZE | Porte da empresa, podendo assumir os valores SMALL, MEDIUM ou BIG | NOT NULL |
| WORKERS | Quantidade de funcionários da empresa | NOT NULL |
| CNPJ | CNPJ com máscara e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| CEI | CEI com máscara e válido de acordo com o site [github.com]([https://www.4devs.com.br/](https://gist.github.com/paulo-sorrentino/7f6e0324fafffb5ec425cbcdb66a98af)) | NOT NULL `UNIQUE` | 
| INSCRIPTION | Inscrição estadual da empresa válido de acordo com [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| RESPONSIBLE |Nome completo de um representante físico da empresa | NOT NULL |
| RESPONSIBLE_CPF | CPF com máscara gerado de acordo com STATE e válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| EMAIL | E-mail de contato da empresa cujo fim do domínio pode terminar de acordo com seu país de origem da coluna COUNTRY | NOT NULL `UNIQUE`|
| WEBSITE | Link para acesso ao site da empresa podendo inciar com http://, https:// ou wwww. O domínio poderá terminar de acordo com seu país de origem do atributo COUNTRY | NOT NULL `UNIQUE` |
| CELLPHONE | Celular com DDD de acordo com CITY com valor assumido entre 924000300 e 939999999 | NOT NULL `UNIQUE`| 
| TELEPHONE | Telefone fixo com DDD de acordo com CITY com valor assumido entre 24000300 e 39999999 | NOT NULL `UNIQUE`| 
| CEP | Válido de acordo com a base de dados dos Correios no ano de 2014 | NOT NULL |
| STATE | Unidade Federativa de acordo com o CEP | NOT NULL |
| CITY | Município de acordo com STATE | NOT NULL |
| NEIGHBORHOOD | Bairro de acordo com CITY | NOT NULL |
| ADDRESS | Logradouro de acordo com as informações de endereço a partir de CEP| NOT NULL |
| NUMBER | Número do endereço sem relação com a base de dados dos correios, assumindo valor entre 0 e 9999 | NOT NULL |
| COMPLEMENT | Complemento de acordo com o endereço na base de dados dos Correios. Em caso de NULL, atribuído à coluna uma informação de complemento fictício | NOT NULL |

**Integração:**

Para consumir o retorno do endpoint, é necessário implementar no testcase os seguintes comandos:


`
Library         ../../../../api/data/client/company.py
`

`
KEYWORD: Gerar Nova Empresa    <TYPER>
`

As seguintes keywords estarão disponíveis para uso:

- matrícula
- tipo empresa
- país
- nome
- marca
- fundação
- porte
- quantidade trabalhadores
- cnpj
- cei
- inscrição estadual
- responsável
- cpf do responsável
- email
- website
- celular
- telefone
- cep
- estado
- cidade
- bairro
- endereço
- número
- complemento

### ENDPOINT: VEHICLE

A entidade veículo pode ser usada para os seguintes tipos de cadastros no Suricato:

- Carros em geral;
- Motocicletas;
- Veículos pesados em geral;
- Outros.


**Rotas:**

- http://172.16.14.177:8080/RB/data/sel.vehicle.php?type=carro

- http://172.16.14.177:8080/RB/data/sel.vehicle.php?type=moto

- http://172.16.14.177:8080/RB/data/sel.vehicle.php?type=pesado

- http://172.16.14.177:8080/RB/data/sel.vehicle.php?type=outros

Ao não informar o valor _type_ na URL, o valor retornado para TYPER será aleatório.

A massa de dados para veículos acompanha 3 mil registros com os seguintes atributos:

| ATRIBUTO | INFORMAÇÕES | CONSTRAINT |
| --- | --- | --- |
| ID | Número de identificação do registro | `IDENTITY` `PRIMARY` |
| BRAND | Marca do veículo | NOT NULL | 
| MODEL | Modelo do veículo | NOT NULL | 
| TYPE_VEHICLE | Tipo do veículo (Carro, Motocicleta, Pesado, Outros) | NOT NULL |
| MODEL_YEAR | Ano do modelo | NOT NULL | 
| RENAVAM | Número do Renavam válido de acordo com o site [4devs.com](https://www.4devs.com.br/)| NOT NULL `UNIQUE` | 
| VEHICLE_PLATE | Número da placa válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL `UNIQUE` | 
| COLOR | Cor do veículo | NOT NULL |
| UF_PLATE | UF da placa do veículo válido de acordo com o site [4devs.com](https://www.4devs.com.br/) | NOT NULL |
| MANUFACTURING_YEAR | Ano de fabricação do veículo | NOT NULL | 
| WEIGHT | Peso do veículo | NOT NULL | 
| INSURANCE_MATURITY | Mês de vencimento do seguro do veículo | NOT NULL |
| FUEL | Tipo de combustível do veículo | NOT NULL |
| LOAD_CAPACITY | Capacidade de carga do veículo | NOT NULL | 
| LICENSE_EXPIRATION | Vencimento da Licença/Seguro do veículo | NOT NULL | 
| INSURANCE_EXPIRATION_MONTH | Mês de vencimento do seguro | NOT NULL | 
| CHASSIS_NUMBER | Número do chassi do veículo | NOT NULL `UNIQUE` | 
| ENGINE_NUMBER | Número do motor do veículo | NOT NULL `UNIQUE` |
| EXCHANGE_FORECAST | Previsão de troca do veículo | NOT NULL | 
| TANK_CAPACITY | Capacidade do tanque do veículo | NOT NULL |
| PEOPLE_CAPACITY | Capacidade de pessoas do veículo | NOT NULL | 
| POTENCY | Potência do veículo | NOT NULL |
| KM_DRIVEN | Quilometragem do veículo | NOT NULL |


**Integração:**

Para consumir o retorno do endpoint, é necessário implementar no testcase os seguintes comandos:


`
Library         ../../../../api/data/client/vehicle.py
`

`
KEYWORD: Gerar Novo Veículo    <TYPER>
`

As seguintes keywords estarão disponíveis para uso:

- marca
- modelo
- tipo veiculo
- ano modelo
- renavam
- placa
- cor
- uf placa
- ano fabricacao
- peso
- vencimento seguro
- combustivel
- capacidade carga
- vencimento licenca seguro
- mes vencimento seguro
- numero chassi
- numero motor
- previsao troca
- capacidade tanque
- capacidade pessoas
- potencia
- custo km rodado


# API AUDIT

**Rotas:**

- http://172.16.14.177/rb/audit/inc.audit.php

Método de envio: POST

Toda vez que um testcase é executado, as informações sobre o perfil de execução serão enviados para um endpoint de resultados com as seguintes informações:


|ATRIBUTO| REGRA |
|--------| ----- |
|ID| - |
|STATUS| Pode assumir 3 valores: <br> <br> - PASS <br> - FAIL <br> - SKIP (-v REQ:TRUE) |
|DATE| Datetime do térmimo da execução do testcase |
|APP| Nome da aplicação do Suricato mantenedor do testcase executado|
|SUITE| Indicador de sequencial do testcase executado|
|GOAL| Descritivo do objetivo do testcase informado no arquivo testcase.robot |
|USERNAME| Nome do usuário utilizado para fazer login no Suricato e efetuar o teste |
|LANGUAGE| Idioma indicado de acordo com o usuário a fazer login no sistema. É importante as informações de USERNAME e LANGUAGE serem condizentes conforme configuração no sistema para assertividade |
|SERVER| IP do servidor em que o testcase foi executado |
|TESTER| IP local da máquina de quem foi o responsável pela execução do teste |
|BROWSER| Indica o navegador usado na execução do perfil de teste |
| MODE | Indica qual modo de execução foi utilizado pelo tester, assumindo os valores: <br><br> - TST <br> - DOC <br> - VID|

**Regras de atualização:**

Quando as informações são enviadas pra o endpoint, os atributos a seguir compõem o perfil de testcase da aplicação (INSERT):

- USERNAME
- LANGUAGE
- SERVER
- APP
- SUITE
- BROWSER

Caso houver uma segunda execução que tenha o mesmo perfil, os seguintes atributos sofrerão UPDATE:

- TESTER
- GOAL
- STATUS
- DATE
- MODE

Pela regra de negócio do endpoint, não haverá na auditoria dois registros com o mesmo perfil de teste

CREATE USER 'DevOps'@'localhost' IDENTIFIED BY 'DevOps@123';
CREATE USER 'DevOps'@'%' IDENTIFIED BY 'DevOps@123';

GRANT ALL ON *.* TO 'DevOps'@'localhost';
GRANT ALL ON *.* TO 'DevOps'@'%';


# VID

O Mode VID implementado no projeto é responsável pela gravação, produção e pós-produção de de mídias MP4 no intuito de gerar material para treinamento e base de conhecimento do sistema Suricato.

Para realizar a narração do vídeo, deve ser utilizado a plataforma: [Microsoft Speech Studio](https://speech.microsoft.com/audiocontentcreation).

Nesta plataforma, é possível utilizar linguagem de marcação SSML para exportação de áudio com a tecnologia de vozes neurais da Microsoft.

Nas vozes em Português Brasileiro, usa-se as vozes:

- ANTÔNIO
- FRANCISCA

**Engine Locução:**

`
FILE: superutil\recorder\audio_player.py
`

Para haver a locução na interação da automação, os áudio exportados pelo [Microsoft Speech Studio](https://speech.microsoft.com/audiocontentcreation) são divididos em tipos de objetos que podem ser encontrados em:

`
DIR: superutil\recorder\assets\ssml\PT-BR
`

Os segmentos de fala que a engine trabalha são divididos em:


- **CHAT:** Segmentos de fala para conversão direta com telespectador
  - **CONNECTOR:** Classe gramatical de conectivos para locução entre intervalores de alternância de objetos;
  - **GREETINGS:** Saudações e cumprimentos após login no sistema;
  - **FAREWELL:** Despedida antes do encerramento do navegador.


- **OBJECTS:** Segmentos de interação UI
  - **BTN:** Interação de locução para elementos de botão no sistema;
  - **MNU:** Interação de locução com leitura separada para menus;
  - **SCN:** Interação de locução para nomes de telas no sistema;
  - **TAB:** Interação de locução para abas no sistema.

Para cada tipo em OBJECTS, há a divisória entre EVENT e WORD:

- **EVENT:** Ação tomada por tipo de objeto: Por exemplo, se for BTN, há a locução para clicar em modo imperativo. Em caso de MNU, seu EVENT será navegação.

- **WORD:** Locução do nome do objeto.


A gravação é iniciada após o login do sistema e é finalizada antes do navegador ser fechado. Desta forma, a rotina não capturará frames de gravação da área de trabalho ou a barra de tarefas da máquina em que a rotina é executada.

**Características da gravação:**

- Navegador em tela cheia
- Início da gravação após login no sistema
- Finalização da gravação antes de fechar o navegador
- Navegador para gravação: Mozilla Firefox

Exemplo de comando para gravação:

`
COMMAND: python main.py robot -v MODE:VID .\tests\AppTest
`

**Características da produção:**

Após o término da gravação, a rotina se encarregará de unir os arquivos de vídeo e áudio e compressão do arquivo utilizando a biblioteca ffmpeg.

**Características da pós-produção:**

Com o arquivo final montado, a rotina irá editar o material com:

- Vinheta de introdução;
- Música de fundo (aleatório);
- Logotipo da Telemática Sistemas Inteligentes no canto inferior direito;
- Vinheta de encerramento.

# PIL

Perfil de Teste

Plano de Teste

Tabela de Combinações

|   SERVER/SGBD   | BROWSER  | LANGUAGE | USERNAME   |
|-----------------|----------|----------|------------|
| 172.16.14.249   | CHROME   | PT-BR    |  USER_PT   |
| 172.16.14.249   | FIREFOX  | PT-BR    |  USER_PT   |
| 172.16.14.249   | IE       | PT-BR    |  USER_PT   |
| 172.16.14.249   | EDGE     | PT-BR    |  USER_PT   |
| 172.16.14.249   | CHROME   | EN-US    |  USER_EN   |
| 172.16.14.249   | FIREFOX  | EN-US    |  USER_EN   |
| 172.16.14.249   | IE       | EN-US    |  USER_EN   |
| 172.16.14.249   | EDGE     | EN-US    |  USER_EN   |
| 172.16.14.249   | CHROME   | ES-ES    |  USER_ES   |
| 172.16.14.249   | FIREFOX  | ES-ES    |  USER_ES   |
| 172.16.14.249   | IE       | ES-ES    |  USER_ES   |
| 172.16.14.249   | EDGE     | ES-ES    |  USER_ES   |
| 172.16.14.249   | CHROME   | PT-BR    |  ADMIN     |
| 172.16.14.249   | FIREFOX  | PT-BR    |  ADMIN     |
| 172.16.14.249   | IE       | PT-BR    |  ADMIN     |
| 172.16.14.249   | EDGE     | PT-BR    |  ADMIN     |
| 172.16.14.248   | CHROME   | PT-BR    |  USER_PT   |
| 172.16.14.248   | FIREFOX  | PT-BR    |  USER_PT   |
| 172.16.14.248   | IE       | PT-BR    |  USER_PT   |
| 172.16.14.248   | EDGE     | PT-BR    |  USER_PT   |
| 172.16.14.248   | CHROME   | EN-US    |  USER_EN   |
| 172.16.14.248   | FIREFOX  | EN-US    |  USER_EN   |
| 172.16.14.248   | IE       | EN-US    |  USER_EN   |
| 172.16.14.248   | EDGE     | EN-US    |  USER_EN   |
| 172.16.14.248   | CHROME   | ES-ES    |  USER_ES   |
| 172.16.14.248   | FIREFOX  | ES-ES    |  USER_ES   |
| 172.16.14.248   | IE       | ES-ES    |  USER_ES   |
| 172.16.14.248   | EDGE     | ES-ES    |  USER_ES   |
| 172.16.14.248   | CHROME   | PT-BR    |  ADMIN     |
| 172.16.14.248   | FIREFOX  | PT-BR    |  ADMIN     |
| 172.16.14.248   | IE       | PT-BR    |  ADMIN     |
| 172.16.14.248   | EDGE     | PT-BR    |  ADMIN     |


