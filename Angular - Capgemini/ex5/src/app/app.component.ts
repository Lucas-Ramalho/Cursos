import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  //Variavel da pagina 1
  p1:boolean = true;

  //Funcao para alterar a pagina
  alterarPagina(){
    this.p1 = !this.p1;
  }

}
