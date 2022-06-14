---
marp: true
theme: uncover
paginate: true
backgroundColor: #ffff
color: #ffff
colorSecondary: #00CFCC
backgroundImage: url('images/background-body.png')
style: |
    section{
      font-family: "Lucida Console", "Courier New", monospace;
    }
---
![bg](images/background-default.png)
# **Opensearch**
## Ferramenta de Análise de dados poderosa e Opensource

---

![bg](images/me.png)

<style scoped>
li {
  list-style-type: square;
  padding: 0;
  width: 54%;
  margin-left: -30px;
}
</style>

#### Thaynara Mendes
- Analista Linux na 4linux
- Consultora de tecnologia na áreas de **Monitoramento** e **DevOps**
- Viciada em café e Linux ☕️🐧️


---
<style scoped>
  blockquote {
    font-size: 24pt;
  }
  p {
    color: #00CFCC;
  }
</style>


> ##### O Termo software livre significa que os usuários possuem a liberdade de executar, copiar, distribuir, estudar, mudar e melhorar o software. Assim sendo, “software livre” é uma questão de liberdade, não de preço. Para entender o conceito, pense em “liberdade de expressão”, não em “cerveja grátis”.

*The Free Software Foundation*

---

# O que é Opensearch? 

O Opensearch é uma ferramenta de análise de dados, com ele você consegue realizar a injestão, busca, visualização dos seus dados.

---

<style>
li {
  list-style-type: square;
}
</style>

## Como surgiu o Opensearch?

- Projeto Opendistro
- Mudança de Licença da Elastic
- Oportunidade de oferecer uma ferramenta totalmente opensource

---

<style scoped>
li {
  list-style-type: square;
  margin-right: 400px;
}
</style>

### O que você ganha ao escolher o Opensearch?

- Segurança avançada
- Geração de alertas
- Geração de relatórios

---

## O que você deixa de ganhar escolher o Opensearch?

- APM (Application Performance Monitoring)
- Lens
- SIEM

---

### Porque utilizar o Opensearch?

- Cultura Opensource
- Integração LDAP e Active Directory
- Detecção de anomalias

---

![bg](images/background-default.png)
# Laboratório 👩🏾‍🔬
[Repositório](https://github.com/thaycafe/opensearch_lab_CPGO)

---

<style scoped>
  p {
    font-size: 29pt;
  }
</style>

**1. Suba o Opensearch e Opensearch Dashboards com o Docker Compose**
![bg right:60% 98%](images/docker-compose.gif)

---

<style scoped>
  p {
    font-size: 29pt;
  }
</style>

**2. Acesse o Opensearch Dashboards e vá para a página de Dev Tools**
![bg right:60% 98%](images/opensearch-dashboards.gif)

---

**3. Através do Dev Tools, crie o índice movies:**

```json
PUT /movies
{
   "mappings": {
       "properties": {
           "title": {
               "type": "search_as_you_type"
           },
           "genre": {
               "type": "search_as_you_type"
           }
       }
   }
}
```
---

![bg right:98% 98%](images/devtools.gif)

---

<style scoped>
  p {
    font-size: 29pt;
  }
</style>

**4. Através do Dev Tools, adicione dados via Bulk Insert**

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
```

---

**5. Faça a pesquisa utilizando o script de auto-complete**
![bg right:70% 98%](images/search_as_you_type.gif)

---
