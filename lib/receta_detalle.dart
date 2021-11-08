import 'package:flutter/material.dart';
import 'Recetas.dart';

class RecetaDetalle extends StatefulWidget {
  final Recetas receta;
  const RecetaDetalle({
    Key? key,
    required this.receta,
  });

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecetaDetalle> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Slider(
              label: '${_sliderVal * widget.receta.porciones} porciones',
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(widget.receta.imagen),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.receta.titulo,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.receta.ingredientes.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredientes = widget.receta.ingredientes[index];
                      return Text(
                          '${ingredientes.cantidad * _sliderVal} ${ingredientes.medida} ${ingredientes.nombre}');
                    })),
          ],
        ),
      ),
    );
  }
}
