# Angular

## Instalação:

- Realizar a instalação atraves dos comandos

     npm install -g @angular/cli

- Realizar a criação do workspace do projeto, em uma pasta com caminho especifica destinada para projetos angular C:\xampp\htdocs\angular\)y

    ng new meu_projeto

- Após criado o workspace, abrir o mesmo no vscode

- Criar uma aplicação de servidor. Caso tenha problema de acessar por meio do Powershell utilizar os comandos:

    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

- E depos de configurado rodar o ng serve novamente

    ng serve --open ou
    ng s

- Sera aberto o servidor em localhost:4200


## Entender a estrutura do arquivo

e2e -> testes unitarios
node_module -> todos os modulos sao colocados aqui, sao os plugins
src -> principal, onde estara nossa aplicacao

app -> o index puxa os dados do app root, funciona assim para conversao do typescript para javascript


# Criando componentes

Componente é uma pagina do no site, agrupamento de arquivos, cada uma dessas paginas tem seus proprios conteudos.

Para criar um componente tem algumas formas, a mais convencional é a :

    * ng g component meu-componente ou
    * ng g c meu-componente

Assim ele vai no node baixa as configurações e cria uma nova pasta em app, com o nome do componente criado, com os arquivos HTML, CSS, TYPESCRIPT e SPEC (conversao)
Aqui dentro montamos nossa pagina.

No arquivo TYPESCIPT em @component, temos o seletor da minha pagina, no exemplo: 'app-meu-componente'.

Em index.html tenho a tag <app-root></app-root>, essa tag puxa as cinfigurações da pagina app.component.html, que nao pode ser excluida pois é a nossa pasta root, porem podemos importar as informações de outra pagina para essa pagina principal, chamando pelo seu @component - <app-meu-componente></app-meu-componente>


Digitamos ng serve para testar e ver se funciona

# app.module

Em app fora da pasta dos componentes criados, temos o app root, que é a estrutura principal, nesse local temos o app.module, onde modulos, sao componentes importados para aplicação em determinada area no nosso site.

Podemos ter varios modulos, e a ideia central é a possbilididade de restringir, por exemplo, uma parte do site apenas com componentes relacionados a produtos PET, podemos separar um modulo com esses dados de produtos PET.

Carregar uma parte do site para produto de limpeza, entao a pagina que tem acesso ao modulo de produto PET, nao tem acesso ao modulo de produto de limpeza.


- Em declarations tempos acesso ao componente

- em imports podemos importar modulos distintos, modulos complementares do angular

-providers - outros componentes, como bootstrap, googlemaps


# Diretivas
O que sao diretivas? Sao acoes como exibir informacao, remover, trabalhar com texto...

é a interacao entre a aplicação e o cliente

temos o 
- ng if - condicional
- ng for - laco de repeticao
- ng swich - escola caso

quando quermos manipular a pagina, deixar elas mais intuitivas vamos utilizar as diretivas


- ng if
Util para acoes como exibir ou ocultar elementos, ou coisas do tipo

obs - em caso de erro de declaracao da variavel:
 - https://cursos.alura.com.br/forum/topico-erro-declaracao-de-variavel-161945

 utilizar: "strictPropertyInitialization": false


# Criando novo projeto - BIND
 ## DATABIND

- Temos varios tipos de bind para enviar informações, mas o conceito inicial é:

    pegar o dado do componente e enviar para o componente html (o arquivo.ts enviando para arquivo.html), podendo ser uma variavel

    Sempre que quero transferir esse dado do arquivo ts, em app component, e enviar para o html, abro duas chaves no html e coloco a variavel.



## EVENTBIND
Sao funcoes que sao criadas no arquivo.ts e podem ser acessadas atraves do html.
Exemplo:
    (click)="mensagem()"

## TwoWay DataBind

È quando o arquivo html tbm consegue enviar dados para o arquivo.ts, é uma ponte de via dupla

Para isso, primeiro precisamos importar um componente chamado forms model:

    import { FormsModule } from '@angular/forms'; e chamalho no imports, junto com BroserModule, FormsModule

Com isso tenho acesso ao twoWay DataBind
Para chamar um twoWay dataBind este é a forma:
    [(ngModel)]="variavel"

# Criando novo projeto II - TAMPLATES

Templates sao paginas, eu posso querer que a pagina aparece ou separeca de acordo com alguma acao.
São subestruturas dentro do nosso site.

<ng-template #pagina1>Pagina 01</ng-template>
<ng-template #pagina2>Pagina 02</ng-template>


# Pipes (Tubos)

O Pipe nada mais é que uma mascara, que transforma o texto ou numero

para ver alguns exemplos de pipe: https://angular.io/guide/pipes


É possivel customizar o pipe tambem.

# Servicos - projeto CRUD

Sao acoes do sistema em cada servico, temos normalmente o component.ts, que na verdade nao é onde cria o servico, na verdade ele serve para intermediar a comunicacao entre o servico e o HTML.

Entao por questao de boa pratico nao criamos o servico dentro arquivo.ts

dentro da pasta do projeto, criamos o novo componente

    * ng g c cursos


assim dentro da pasta app, tera uma nova cursos que tera seuas arquivos

Agora criamos um servico dentro da pasta cursos criada anteriormente

    * ng g s cursos/cursos

Assim é criado um novo arquivo dentro da pasta de cursos chamado - cursos.service.ts
Aqui dentro ficara toda a estrutura para manipular cursos

è possivel observar que ja ha a importacao de um Injectable, que nada mais significa que ele tera acesso ao componente.
Por padrao ele vem root, que significa qualquer componente tera acesso a esse servicos, mas se quiser o os ervice funcione apenas para o componente cursos, mudamos de root, para Cursos.



# Introducao a rotas
Rota é um carregamento dinamico de paginas, quando estamos em uma ágina e essa pagina tem um link, esperamos para carregar aquela pagina. Rotas, executa uma pagina, mas nao existem um load, abre a pagina automaticamente, sem precisar carregar novamente a pagina. Isso faz com que a aplicação fique mais rapida.



Para inciar o estudo de rotas, precisamos ter paginas para navegacao, entao para isso iremos criar as paginas atraves dos comandos

    * ng g c home
    * ng g c sobre

Agora que temos nossas duas paginas criadas temos que realizar a interligação entre elas, que se trata da implementacao da nossa rota

iremos startar nosso servidor

    * ng s

e vamos mudar essa visualização do welcome do nosso app.component.html

Observe que agora la no final temos um novo componente <router-outlet></router-outlet> que é a exibicao dos meus componentes, iremos manter e apagar o restante, ali dentro sera exibido o meu sobre ou o meu home.

Juntamente com esse componente , podemos criar nossa barra de navegacao

Exemplo:
<!-- Menu -->
<nav>
  <a routerLink="/home">Home</a>
  <a routerLink="/sobre">Sobre</a>
</nav>

<!-- Exibir os componentes -->
<router-outlet></router-outlet>

E agora vamos implementar a rota, indo em app-routing.module.ts, na constante de rotas criamos a implementacao

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'sobre', component: SobreComponent }
];

Agora se testarmos conseguimos ver que se tornou possivel a navegacao entre home e sobre

## Inplementando uma rota padrao

É possivel estabelecer uma rota padrao, criando um path vazio, e utilizando a funcao redirectTo, para o caminho padrao, como pathMatch:'full', para que isso seja feito sempre nessa situação.

 { path: '', redirectTo: 'home', pathMatch:'full'}

## Rotas de erro
Para criar uma rota de erro devemos criar um noco componente, criando um pagina para ser rediriecionada em caso de erro.

    * ng g c error404

Com a pagina criada vamos ao HTML da mesma e criar uma visualização informando que a pagina nao foi encontrada

E apos isso criamos a rota para redirecionar em caso de erro

    * {path: '**', component: Error404Component}


## Funcao Guard
Serve para salvar a as rotas e protege-las contra acessos indevidos, como por exemplo impedir que alguem acesse a pegina sem ter feito o devido login.

Criamos um funcao que caso seja true ou false, temos acesso liberado a pagina sobre ou nao

Vamos primeiro criar o nosso guard... nossa autenticação

    * ng g g Auth

Posso selecionar o tipo de autenticacao que quero implementar, vou selecionar o CanActivate

Cria-se o nosso auth.guard, no app root.

Vamos para o nosso app routing e selecionamos qual das nossas rotas estara assegurada pelo AuthGuard

{ path: 'sobre', component: SobreComponent, canActivate:[AuthGuard] }

Assim definimos que esta pagina que queremos ter uma seguranca, e so sera acessada em caso de algum tipo de verificação

agora vamos criar um boolean la em auth.guard para validar esses acesso

export class AuthGuard implements CanActivate {

  //Variavel de acesso
  acesso:boolean=false; <---------------


  //Metodo
  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    return this.acesso; <-----------------
  }


  # Implementando Bootstrap

  Para implementar o bootstrap no angular devemos fazer a instalaçao do mesmo, pelo npm

  * npm i bootstrap

  Apos instalado sera criada uma psta em node modules com o bootstrap.

  agora em angular.json, vamos na configuração de estilos, a inserir o boostrap: 
    "styles":[
        "node_modules/bootstrap/dist/css/bootstrap.min.css",

        "src/styles.css"
    ]

para trabalhar com bootsrap esapecifico para angular, temos o site:

* https://ng-bootstrap.github.io/#/home

* https://angular.io/


Estudar o modulo HTTP

ouras fontes:
https://jacksongomesbr.gitbooks.io/desenvolvimento-web-front-end-com-angular/content/
