class NomeEspeleotemas {
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
}

class NotaEpeleotema {
  NomeEspeleotemas nome;
  int nota;

  NotaEpeleotema({
    required this.nome,
    required this.nota,
  });
}
