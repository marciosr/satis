import 'package:flutter/material.dart';

class Espeleotema {
  String nome;
  int nota;

  Espeleotema({
    required this.nome,
    required this.nota,
  });
}

class EspeleotemaRepository {
  static List<Espeleotema> tabela = [
    Espeleotema(nome: 'Estalagmites', nota: 4),
    Espeleotema(nome: 'Estalactites', nota: 2),
    Espeleotema(nome: 'Colunas/Pilar', nota: 6),
    Espeleotema(nome: 'Pendentes', nota: 9),
    Espeleotema(nome: 'Travertinos', nota: 2),
    Espeleotema(nome: 'Microtravertino', nota: 9),
    Espeleotema(nome: 'Coraloides', nota: 6),
    Espeleotema(nome: 'Blocos Abatidos', nota: 1),
  ];
}

class EspeleotemaScreen extends StatefulWidget {
  const EspeleotemaScreen({Key? key}) : super(key: key);
  @override
  _EspeleotemaScreenState createState() => _EspeleotemaScreenState();
}

class _EspeleotemaScreenState extends State<EspeleotemaScreen> {
  List<bool> _selectedItems =
      List.filled(EspeleotemaRepository.tabela.length, false);

  int _getSelectedNotaTotal() {
    int total = 0;
    for (int i = 0; i < EspeleotemaRepository.tabela.length; i++) {
      if (_selectedItems[i]) {
        total += EspeleotemaRepository.tabela[i].nota;
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espeleotemas'),
      ),
      body: ListView.builder(
        itemCount: EspeleotemaRepository.tabela.length,
        itemBuilder: (BuildContext context, int index) {
          Espeleotema espeleotema = EspeleotemaRepository.tabela[index];
          return ListTile(
            leading: Checkbox(
              value: _selectedItems[index],
              onChanged: (value) {
                setState(() {
                  _selectedItems[index] = value ?? false;
                });
              },
            ),
            title: Text(espeleotema.nome),
            subtitle: Text('Nota: ${espeleotema.nota}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Nota total selecionada: ${_getSelectedNotaTotal()}'),
        ),
      ),
    );
  }
}
