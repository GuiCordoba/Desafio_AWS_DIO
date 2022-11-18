# Explorndo Dados Demograficos do Brasil com Serviço de Big Data na AWS

Esse repositorio faz parte do desafio de projeto do bootcamp Geração Tech Unimed-BH - Ciência de Dados.

### Algumas Informações retiradas do banco de dados estudado:
- Estado mais populoso - São Paulo
- Estado menos populoso - Roraima
- Região mais populosa - Sudeste
- Região menos populosa - Centro-Oeste
- Cidade mais populosa - São Paulo-SP
- Cidade menos populosa - Anhanguera-GO
- Cidades mais e menos populosas por estado:
  - Acre - Rio Branco e Santa Rosa do Purus;
  - Alagoas - Maceió e Pindoba;
  - Amapá - Macapa e Pracuúba;
  - Amazonas - Manaus e Japurá;
  - Bahia - Salvador e Laje;
  - Ceará - Fortaleza e Guaramiranga;
  - Espírito Santo - Serra e Divino de São Lourenço;
  - Goiás - Goiâna e Anhanguera;
  - Maranhão - São Luís e Junco do Maranhão;
  - Mato Grosso - Cuiabá e Ponte Branca;
  - Mato Grosso do Sul - Campo Grande e Alcinópolis;
  - Minas Gerais - Belo Horizonte e Senador José Bento;
  - Pará - Belém e Bannach;
  - Paraná - Curitiba e Nova Aliança do Ivaí;
  - Pernambuco - Recife e Fernando de Noronha;
  - Piauí - Teresina e São Miguel da Baixa Grande;
  - Rio de Janeiro - Rio de Janeiro e Macuco;
  - Rio Grande do Norte - Natal eTaboleiro Grande;
  - Rio Grande do Sul - Porto Alegre e Vista Alegre do Prata;
  - Rondônia -Porto Velho e Primavera de Rondônia;
  - Roraima - Boa Vista e São Luiz;
  - Santa Catarina - Joinville e Paial;
  - São Paulo - São Paulo Uru;
  - Sergipe - Aracaju e Amparo de São Francisco
  - Tocantins - Palmas eAbreulândia;
  - Distrito Federal - Brasília


### Serviços utilizados nessa atividade prática
 - Amazon S3
 - Amazon Glue
 - Amazon Athena
 - Amazon QuickSight

### Etapas para desenvolvimento

### Criar bucket no Amazon S3

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [nome_do bucket] - Create bucket
- Create folder (Criar uma pasta chamada ```/output``` e outra com o nome do seu conjunto de dados. Este nome irá definir o nome da tabela criada no Glue)
- Upload dos arquivos de dados localizados na pasta ```/data```

#### Criar Glue Crawler

- Amazon Glue Console -> Crawlers -> Add Crawler
- Source type [Data Stores] -> Crawl all folders
- Data store [S3] -> Include path [caminho do diretório dos dados de entrada]
- Create IAM Role
- Frequency [Run on demand]
- Database name [seu_nome_de_db]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases -> Tables -> Visualizar dados das tabelas criadas

### Criar aplicação no Amazon Athena

- Query editor -> Settings -> Manage settings -> Query result location and encryption -> Browse S3 -> selecionar o bucket criado
- Selecionar Database -> criar queries (exemplos na pasta ```/src```)
- Verificar queries não salvas no bucket criado no S3
- Salavar queries -> Executar novamente -> Verificar no bucket criado no S3

#### Criando nova tabela

- Generate table DDL
- Copiar a query gerada
- Selecionar o DB e criar a nova tabela em uma nova query

### Visualizar dados no Amazon QuickSight

- Signup (caso não tenha conta) -> Escolher [Standard]
- Datasets -> Create new dataset -> Athena -> Name [NomeDoDataSet] -> Create
- Select database -> select table -> Edit or preview -> Save & visualize
- Criar visualizações selecionando colunas, criando filtros e parâmetros e selecionando Visual types para gráficos.

### Eliminar recursos
 - Exluir os elementos criados

