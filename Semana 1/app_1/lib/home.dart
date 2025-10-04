import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold: pantalla en blanco - Estructura básica
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Tarea"),centerTitle: true,),
        body: Column(
          children: [
            Container(
              width: 500,
              height: 500,
              padding: EdgeInsets.all(12),
              alignment: Alignment.topCenter, //todos
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 207, 174),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, //para alinear el texto cuadro
                children: [
                  Text(
                    "Gabriela Domínguez",
                    style: TextStyle(
                      fontSize: 25, 
                      fontWeight: FontWeight.w800, 
                      color: Colors.indigoAccent),
                  ),
                  const SizedBox(height: 12,),
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/naranja.jpg",
                          fit: BoxFit.cover,
                        )
                      ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            // Lo del boton DETALLE, para movernos
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (_) => const PaginaDetalle()),
                );
              }, child: const Text("Detalles"),
            )
          ],
        ),
      );
     
  }
}

// Todo lo de la otra página, diseño feo pero sirve [mejorarlo]

class PaginaDetalle extends StatefulWidget{
  const PaginaDetalle({super.key});
  
  @override
  State<PaginaDetalle> createState() => _PaginaDetalleState();
}

class _PaginaDetalleState extends State<PaginaDetalle> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(title: const Text("Detalles")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Descripción: Me gusta aprender sobre programación pero soy pesima en diseño :c."),
            const SizedBox(height: 10),
            const Text("Correo: gookam.dguez@gmail.com"),
            const SizedBox(height: 10),
            const Text("Hobbies: * Caminar\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t* Escuchar música"), //mejorar esto despues jajaja
            const SizedBox(height: 30),

            // Pra el contador +/-
            const Text(
              "Contador",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => contador--),
                  child: const Text("–"),
                ),
                const SizedBox(width: 12),
                Text(
                  "$contador",
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => setState(() => contador++),
                  child: const Text("+"),         
                ),
              ],
            ),

          // Pa regresa con el mandarino
            const SizedBox(height: 24),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Volver a Home"),
            ),
          ],
        ),
      ),
    );

  }
}