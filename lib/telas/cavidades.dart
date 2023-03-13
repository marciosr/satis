import 'package:flutter/material.dart';

class EspeleotemasScreen extends StatefulWidget {
  const EspeleotemasScreen({Key? key}) : super(key: key);

  @override
  _EspeleotemasScreenState createState() => _EspeleotemasScreenState();
}

class _EspeleotemasScreenState extends State<EspeleotemasScreen> {
  final List<String> espeleotemas = [
    'Estalagmites',
    'Estalactites',
    'Colunas/Pilar',
    'Pendentes',
    'Travertinos',
    'Microtravertino',
    'Coraloides',
    'Blocos abatidos',
    'Escorrimentos',
    'Pérolas'
  ];

  final Set<String> selectedEspeleotemas = {};

  void _onEspeleotemaSelected(String espeleotema) {
    setState(() {
      if (selectedEspeleotemas.contains(espeleotema)) {
        selectedEspeleotemas.remove(espeleotema);
      } else {
        selectedEspeleotemas.add(espeleotema);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espeleotemas'),
      ),
      body: ListView.builder(
        itemCount: espeleotemas.length,
        itemBuilder: (context, index) {
          final espeleotema = espeleotemas[index];
          return CheckboxListTile(
            title: Text(espeleotema),
            value: selectedEspeleotemas.contains(espeleotema),
            onChanged: (value) {
              _onEspeleotemaSelected(espeleotema);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Do something with selected espeleotemas
          Navigator.pop(context, selectedEspeleotemas.toList());
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
