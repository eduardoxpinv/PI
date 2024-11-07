<!-- TÍtulo -->

# PI: Projeto integrador de implantação de banco de dados

<!-- Descrição -->

## Sobre o projeto
---

O “App Solidário” é um aplicativo desenvolvido para facilitar a arrecadação de itens essenciais, como alimentos e roupas, para pessoas em áreas de risco. Construído com Flutter e Dart, o projeto utiliza a infraestrutura de nuvem da AWS para garantir escalabilidade e economia. A equipe adota ferramentas open-source para reduzir custos e otimizar o desenvolvimento. Com uma interface intuitiva, o aplicativo promove o engajamento dos usuários em ações de solidariedade para apoiar comunidades vulneráveis.



<!-- Sumário -->
## Sumário 
---

 - [PI: Projeto integrador de implantação de banco de dados](#pi-projeto-integrador-de-implantação-de-banco-de-dados)
    - [Sobre o projeto](#sobre-o-projeto)
    - [Modelo conceitual](#modelo-conceitual)
    - [Pré-requisitos](#pré-requisitos)
      - [Instanciando o banco de dados](#instanciando-o-banco-de-dados)
      - [Demonstração do banco de dados](#demonstração-do-banco-de-dados)
    - [Apresentação do projeto](#apresentação-do-projeto)
- [Autores](#autores)
s

<!-- Modelo conceitual -->
## Modelo conceitual
---
![modelo_conceitual](https://github.com/user-attachments/assets/b5d2d907-5ba2-4374-a808-8089194ca99e)

<!-- Pré-requisitos -->
## Pré-requisitos
---
Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas: [Git](https://git-scm.com), [Docker](https://www.docker.com/) e [MySQL Workbench](https://www.mysql.com/products/workbench/).

## Instanciando o banco de dados
```bash
# Rode o seguinte comando para baixar a imagem docker
$ docker pull carlos622/pi_v2:2.0.0

# O banco de dados será instanciado usando o seguinte comando
$ docker container run -d --name PI  -p3306:3306  carlos622/pi_v2:2.0.0

# Entrando no bancos de dados PI  
$ docker container exec -it PI mysql -usenac -psenac
```
## Demonstração do banco de dados 
---
![Gravação-de-Ecrã-2024-11-06-195851](https://github.com/user-attachments/assets/b3fe44ec-6006-4a80-bd3b-9623bc0ef2bd)

## Apresentação do projeto
https://github.com/user-attachments/assets/88520912-16ea-4635-bae7-7a08de7ba8d5


<!--Autores-->
## Autores
---
- Thomas Burmeister Silva
- Fernanda de Aro
- Carlos Eduardo de Oliveira Cirilo
- Davi Ribeiro da Silva
- Natalia Pires de Almeida



