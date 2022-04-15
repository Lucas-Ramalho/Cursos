import { Component, OnInit } from '@angular/core';
import { Curso } from './Curso';
import { CursosService } from './cursos.service';


@Component({
  selector: 'app-cursos',
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css']
})
export class CursosComponent implements OnInit {

  //Atributos
  public vetorCursos:Curso[];
  public curso:Curso;
  public id:number;


  // Construtor - como quero ter acesso ao meu servico, crio um parametro para poder utilizar
  //para termos acesso aos metodos e atributos que temos no servico.ts
  constructor(private servico:CursosService) { }

  // inicialização - inicializacao padrao quando aberto
  ngOnInit(): void {

    this.id = -1;
    this.curso = new Curso("",NaN,"");
    this.vetorCursos = this.servico.listar();
  }

  //Cadastrar
  cadastrar(){
    this.servico.cadastrar(this.curso);
    this.curso = new Curso("",NaN,"");
  }

  //Exclusao
  excluir(id:number){
    this.servico.excluir(id);
    this.id = -1;
    this.curso = new Curso("",NaN,"");
  }

  //Editar
  editar(id:number){

    this.id = id;

    this.curso = new Curso(
      this.vetorCursos[id].nomeCurso,
      this.vetorCursos[id].valorCurso,
      this.vetorCursos[id].areaCurso,
    );
  }

  //Atualizar
  atualizar(){
    this.servico.alterar(this.id, this.curso);
    this.curso = new Curso("",NaN,"");
    this.id = -1;
  }

}
