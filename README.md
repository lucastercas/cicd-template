# Modulo 1

## Requisitos


## Instalação Inicial

### Subindo os Containers

### Configurando os Serviços

## Gerenciando os Serviços

### Conectando `GitLab` e `Jenkins`

Criar um projeto no GitLab, e adicionar o diretorio modulo-1 no repositorion
```bash
$ git init
$ git remote add origin http://localhost:5000/...
$ git add .
$ git commit -m "First Commit"
$ git push origin master
```

Após criar o repositório e adicionar código nele, criar um `Access Token`,
em *Settings* -> *Access Tokens*, marcar a opção `api`, inserir o nome, e 
clicar em `create personal access token`, isso vai gerar um token. 
*Copie o token para algum lugar*.

Na interface do Jenkins, ir para *Gerenciar Jenkins* -> *Configurar o sistema*.
Na opção GitLab, inserir qualquer nome para o nome da conexão, na url inserir
`http:gitlab` e para as credenciais, clicar em adicionar, selecionar jenkins, 
e mudar o tipo de credencial para `GitLab API Token`, e  inserir o token
do passo anterior criado no GitLab.

Criar um projeto no Jenkins, do tipo freestyle. 