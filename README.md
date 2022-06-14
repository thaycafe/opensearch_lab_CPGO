# Laboratório da Palestra sobre Opensearch

Heeey, se você chegou aqui, provavelmente é porquê assistiu minha palestra na Campus de Goiânia. Bora lá!

## Provisionamento de VM

Dentro da pasta provision, terá um Vagrantfile e um Ansible playbook para se caso precisar de uma VM para provisionar o cluster de Opensearch.

> Para subir a vm você precisa ter o **Vagrant** e **Virtual Box** instalado na sua máquina.

Para criar e subir a máquina basta executar:
```
$ vagrant up
```

### Docker compose

Para subir o cluster de Opensearch e Opensearch Dashboards basta utilizar o **docker-compose.yml** que está neste repor e subir os serviços:

```bash
docker-compose up -d
```

## Analisando dados no Opensearch

Assim que subir os serviços, o Opensearch Dashboards ficará disponível na porta 5601!

> Login: admin:admin

Antes de inserirmos dados, vamos criar uma pipeline para criar um campo chamado "indexed_at":

```json
PUT /_ingest/pipeline/timestamp
{
  "description": "Adicionando o campo indexed_at nos documentos",
  "processors": [
    {
      "set": {
        "field": "indexed_at",
        "value": "{{_ingest.timestamp}}"
      }
    }
  ]
}
```

> Você pode utilizar o DevTools do Opensearch Dashboards ou alguma ferramenta para fazer essas requisições (curl, insominia, postman ...)

Vamos criar o índice e definir essa pipeline como default:

```json
PUT /movies
{
  "settings": {
    "index.default_pipeline": "timestamp"
  }
}
```

Vamos adicionar um bulk request para alguns documentos:

```json
PUT /movies/_bulk/
{ "index":{} }
{ "title" : " Predestination", "year":2014 , "genre":["Action", "Drama", "Sci-Fi"] }
{ "index":{} }
{ "title" : "Star Wars: Episode VII - The Force Awakens", "year":2015 , "genre":["Action", "Adventure", "Fantasy", "Sci-Fi"] }
{ "index":{} }
{ "title" : "Interstellar", "year":2014 , "genre":["Sci-Fi", "Adventure", "Drama"] }
{ "index":{} }
{ "title" : "Venom", "year":2018 , "genre":["Action", " Adventure", "Sci-Fi"] }
{ "index":{} }
{ "title" : "A Quiet Place Part II", "year":2020 , "genre":["Horror", "Sci-Fi", "Drama"] }
{ "index":{} }
{ "title" : "Donnie Darko", "year":2001 , "genre":["Drama", "Sci-Fi", "Mistery"] }
{ "index":{} }
{ "title" : "Black Widow", "year":2021 , "genre":["Action", " Adventure", "Sci-Fi"] }
{ "index":{} }
{ "title" : "Nobody", "year":2021 , "genre":["Action", "Drama", "Crime"] }
{ "index":{} }
{ "title" : "The Dark Knight", "year":2008 , "genre":["Action", "Drama", "Crime"] }
{ "index":{} }
{ "title" : "Inception", "year":2010 , "genre":["Action", " Adventure", "Sci-Fi"] }
{ "index":{} }
{ "title" : " The Matrix", "year":1999 , "genre":["Action",  "Sci-Fi"] }
{ "index":{} }
{ "title" : "Avatar", "year":2009 , "genre":["Action", " Adventure", "Fantasy"] }
{ "index":{} }
{ "title" : "Ex Machina", "year":2014 , "genre":["Action", " Adventure", "Sci-Fi"] }
{ "index":{} }
{ "title" : " The Hobbit: An Unexpected Journey", "year":2012 , "genre":[" Adventure", "Fantasy"] }
{ "index":{} }
{ "title" : "Wonder Woman", "year":2017 , "genre":["Action", " Adventure", "Fantasy"] }
{ "index":{} }
{ "title" : "Doctor Strange in the Multiverse of Madness", "year":2022 , "genre":["Action", " Adventure", "Fantasy"] }
```

Para explorarmos esses dados, é preciso criar um **Index Pattern**, então ao retornar no **Discover** aparecerá uma página para criar o **Index Pattern**, clique em **Create index pattern**:

**Index pattern name**: movies*

**Time field**: indexed_at



Apois criar, parecerá todos os campos existentes neste index, podemos alterar o modo de visualização. Por exemplo:

Acesse o campo **year** e clique no ícone de editar:

**Format**: Number
**Numeral.js format pattern**: 0

Após retornar para o **Discover**, já conseguimos visualizar os documentos que adicionamos:
![Opensearch Dashboards-Discover](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/e2uqjwo4cjis0jefy72j.png)


## Search as you type