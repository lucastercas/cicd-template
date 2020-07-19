# Modulo 1

## Requisitos

## Instalação Inicial

### Subindo os Containers

### Configurando os Serviços

### Jenkins
1. Configurar Jenkins
Para o jenkins, a primeira vez vai pedir uma chave, tem o comando
`make get_key` no Makefile desse repositório, que vai exibir essa chave.
Após inserir a chave, clicar em *Install suggested plugins*, e depois
criar um usuário e seguir as telas.

### GitLab
1. Configurar GitLab
Criar a senha pro usuário `root`.

1. Criar Projeto no GitLab
Na interface do GitLab, clicar em *Create a Project*, botar o nome do
projeto, e clicar em *Create project*.

Para adicionar o código da aplicação para o repositório:
```bash
$ cd app
$ git init
$ git remote add origin http://localhost:5000/root/<project-name>.git
$ git add .
$ git commit -m "First Commit"
$ git push origin master
```
### SonarQube
1. Configurar SonarQube
Acessar o site, e logar como *admin*, senha *admin*.

2. Criar um novo projeto
Ao entrar, clicar em *Create new project*, a project key é
*org.springframework:gs-spring-boot-docker*, e o display name
pode ser qualquer um. Ao completar esse passo, o SonarQube
vai pedir para criar um nome para o token, para ele gerar.

3. Configurar o token
Copiar o token gerado pelo SonarQube, editar o arquivo
`.env`, e criar a variavel `SONAR_TOKEN`, com o valor
dela sendo o token gerado.

### GitLab e Jenkins

1. Adicionar Pipeline no Jenkins
Na interface do Jenkins, clicar em *Novo job* -> *Pipeline*, digitar um nome
para a pipeline, e clicar em *Criar*

Nas abas em cima, ir para *Pipeline* -> *Definition*, e selecionar
*Pipeline script from SCM*. Em SMC, selecionar Git, adicionar a
url do repositório (`http://gitlab/root/<project-name>`), e adicionar
as credenciais, inserindo o username e password do usuário
do GitLab.

3. Rodar Pipeline

### SonarQube e Jenkins

1. Configurar o SonarQube no Jenkins

2. Configurar o WebHook do SonarQube

## Referências
1. [Java App with Maven](https://www.jenkins.io/doc/tutorials/build-a-java-app-with-maven/)
2. 