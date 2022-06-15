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
  h3 {
    font-size: 40pt;
    list-style-type: circle;
    font-weight: 900;
    color: #fff
  }
  p {
    font-size: 20pt;
  }
  {
   font-size: 35px;
  }
</style>

### SORTEIO NO FIM DA PALESTRA!
![bg right:50% 80%](images/4linux_qrcode.png)
##### Inscreva-se e participe!
Escaneie o QRCode

---
<style scoped>
  blockquote {
    font-size: 24pt;
  }
  p {
    color: #00CFCC;
  }
</style>


> ##### O termo Software livre significa que os usuários possuem a liberdade de executar, copiar, distribuir, estudar, mudar e melhorar o software. Assim sendo, "software livre" é uma questão de liberdade, não de preço. Para entender o conceito, pense em "liberdade de expressão", não em "cerveja grátis".

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
- Detecção de anomalias

---

## O que você deixa de ganhar ao escolher o Opensearch?

- APM (Application Performance Monitoring)
- Lens
- SIEM

---

### Porque utilizar o Opensearch?

- Software livre
- Integração LDAP e Active Directory
- Detecção de anomalias

---
<style scoped>
  p {
    font-size: 22pt;
  }
</style>

# Laboratório 👩🏾‍🔬
![bg right:45% 90%](images/repo_qrcode.png)
É só escanear ou acessar o link:
[https://github.com/thaycafe/opensearch_lab_CPGO](https://github.com/thaycafe/opensearch_lab_CPGO)


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

![w:900px](images/create_index.png)

---

![bg right:98% 98%](images/devtools.gif)

---

<style scoped>
  p {
    font-size: 22pt;
  }
</style>

**4. Através do Dev Tools, adicione dados via Bulk Insert**

![w:1100px ](images/bulk_insert.png)

---

**5. Faça a pesquisa utilizando o script de auto-complete**
![bg right:67% 98%](images/search_as_you_type.gif)

---

<style scoped>
  h1 {
    font-size: 120px;
    text-align: center;
  }
  p {
    font-size: 40px;
    padding: 100px;
    margin-bottom: -200px;
  }
</style>

# Obrigada!
  

![w:50px](images/instagram.svg.webp) thaycafe
![w:50px](images/twitter.png) thaycafee
![w:50px](images/telegram.png) thaycafe
![w:50px](images/linkedin.png) thaynaramendss

