import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
//Diretiva NGIF

exibirTexto:boolean;

acaoNgIf(){
  this.exibirTexto = !this.exibirTexto;
}


// Diretiva NGFOR
cursos = ["HTML", "CSS", "PHP", "ANGULAR"]


// Diretiva NGSWITCH
curso_selecionado = "ANGULAR";


//Diretiva NGCLASS
ligada:boolean;

ligarNgIf(){
  this.ligada = !this.ligada;
}

}
