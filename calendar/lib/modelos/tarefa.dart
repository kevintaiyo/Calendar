

class Task{
 int? id;
 String? titulo;
 String? nota;
 int? estaCompleto;
 String? data;
 String? tempoInicial;
 String? tempoFinal;
 int? cor;
 int? lembrar;
 String? repetir;

 Task({this.id, this.titulo, this.nota, this.estaCompleto, this.data, this.tempoInicial, this.tempoFinal, this.cor, this.lembrar, this.repetir});

 Task.fromJson(Map<String, dynamic> json){
  id = json['id'];
  titulo = json['titulo'];
  nota = json['nota'];
  estaCompleto = json['estaCompleto'];
  data = json['data'];
  tempoInicial = json['tempoInicial'];
  tempoFinal = json['tempoFinal'];
  cor = json['cor'];
  lembrar = json['lembrar'];
  repetir = json['repetir'];
 }

  
  
  Map<String, dynamic> toJson(){
     final Map <String, dynamic> data = new Map <String, dynamic>();
      data['id']=this.id;
      data['titulo']=this.titulo;
      data['nota']=this.nota;
      data['estaCompleto']= this.estaCompleto;
      data['data']=this.data;
      data['tempoInicial']=this.tempoInicial;
      data['tempoFinal']=this.tempoFinal;
      data['cor']=this.cor;
      data['lembrar']=this.lembrar;
      data['repetir']=this.repetir;
     return data;
  } 
}

