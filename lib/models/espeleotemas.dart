/*enum Tipo {
  estalagmites,
  estalactites,
  colunasPilar,
  pendentes,
  travertinos,
  microtravertino,
  coraloides,
  blocosAbatidos,
  escorrimentos,
  perolas,
}*/

/*class NomeEspeleotemas {
  bool estalagmites;
  bool estalactites;
  bool colunasPilar;
  bool pendentes;
  bool travertinos;
  bool microtravertino;
  bool coraloides;
  bool blocosAbatidos;
  bool escorrimentos;
  bool perolas;

  NomeEspeleotemas({
    required this.estalagmites,
    required this.estalactites,
    required this.colunasPilar, 
    required this.pendentes,
    required this.travertinos,
    required this.microtravertino,
    required this.coraloides,
    required this.blocosAbatidos,
    required this.escorrimentos,
    required this.perolas,
  });
}*/

class Espeleotema {
  String nome;
  int nota;

  Espeleotema({
    required this.nome,
    required this.nota,
  });
}

class EspeleotemaRespotiory {
  static List<Espeleotema> tabela = [
    Espeleotema(nome: 'Estalagmites', nota: 2),
    Espeleotema(nome: 'Estalactites', nota: 2),
    Espeleotema(nome: 'Colunas/Pilar', nota: 2),
    Espeleotema(nome: 'Pendentes', nota: 2),
    Espeleotema(nome: 'Travertinos', nota: 2),
    Espeleotema(nome: 'Microtravertino', nota: 2),
    Espeleotema(nome: 'Coraloides', nota: 2),
    Espeleotema(nome: 'Blocos Abatidos', nota: 2),
  ];
}
