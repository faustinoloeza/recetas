import 'package:flutter/material.dart';
import 'package:guishi/receta_detalle.dart';
import 'Recetas.dart';
import 'ingrediente.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Omnitracs Items",
      home: OmniHomeState(),
    );
  }
}

class _OmniHome extends State<OmniHomeState> {
  static List<Recetas> recetas = [
    Recetas(
      'Pollo con arroz',
      'https://i.picsum.photos/id/237/536/354.jpg?hmac=i0yVXW1ORpyCZpQ-CknuyV-jbtU7_x9EBQVhvT5aRr0',
      4,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
    Recetas(
      'Pollo con arroz',
      'https://picsum.photos/300/250',
      5,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
    Recetas(
      'Pollo con arroz',
      'https://picsum.photos/300/200',
      6,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
    Recetas(
      'Pollo con arroz',
      'https://picsum.photos/300/200',
      9,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
    Recetas(
      'Pollo con arroz',
      'https://picsum.photos/300/200',
      8,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
    Recetas(
      'Pollo con arroz',
      'https://picsum.photos/300/200',
      7,
      [
        Ingrediente(
          'box',
          1,
          'Spaghetti',
        ),
        Ingrediente(
          '',
          4,
          'Frozen Meatballs',
        ),
        Ingrediente(
          'jar',
          0.5,
          'sauce',
        ),
      ],
    ),
  ];

  Widget buildRecipeCard(Recetas myreceta) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RecetaDetalle(receta: myreceta);
        }));
      },
      child: Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image.network(myreceta.imagen),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                myreceta.titulo,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: recetas.length,
            itemBuilder: (BuildContext context, int index) {
              return buildRecipeCard(recetas[index]);
            },
          ),
        ),
      ),
    );
  }
}

class OmniHomeState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OmniHome();
  }
}
