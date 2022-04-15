import { Injectable } from '@angular/core';
import { Curso } from './Curso';


// Acesso total do servico
@Injectable({
  providedIn: 'root'
})

//Classe
export class CursosService {

  //Construtor - sempre que atualizar o sistema, aparece utomaticamente uma informacao
  constructor() { }

  //Vetor de cursos
  // criei o vetor com base no construtor feito na classe Curso
  private vetorCursos: Curso[] = [

    new Curso("Angular", 800, "Desenvolvimento"),
    new Curso("PHP", 590, "Desenvolvimento"),
    new Curso("Photoshp", 470, "Design")

  ];


  // CAdastro de cursos
  // pego o vetor de curso e dou um push, com o novo curso, baseado no construtor da classe Cursos
  public cadastrar(curso:Curso){
    this.vetorCursos.push(curso);
  }

  //Selecao de cursos
  //so preciso retornar o vetor de cursos
  public listar(){
    return this.vetorCursos;
  }

  //Alteracao de cursos
  //Preciso do id e do curso, e a alteracao sera de acordo coma informcao de curso
  public alterar(id:number, curso:Curso){
    this.vetorCursos[id] = curso;
  }

  //Exclusao de cursos
  // So preico do id para exclusao, e irei pegar o vetor de cursos, e fazer um splice pelo id, e a partir dele 1 linha
  public excluir(id:number){
    this.vetorCursos.splice(id,1);
  }



}
