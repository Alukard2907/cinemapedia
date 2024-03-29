import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
   

    Stream<String> getLoadingMessages(){
       final messages = <String>[
      'Cargando peliculas',
      'Comprando palomitas de maìz',
      'Cargando populares',
      'Llamando a mi novia',
      'Ya mero....',
      'Esto ya esta tardando mas de lo esperado :(',
    ];
      return Stream.periodic(const Duration(milliseconds: 1200),(step){
        return messages[step];
      }).take(messages.length);
    }
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(height: 10,),
          const CircularProgressIndicator(strokeWidth: 2,),
          const SizedBox(height: 10,),
          StreamBuilder(
            stream: getLoadingMessages(), 
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Cargando..');
              return Text(snapshot.data!);
            },
            )
        ],
      ),
    );
  }
}