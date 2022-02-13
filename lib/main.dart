import 'package:flutter/material.dart';

main() {
  runApp(const ImcApp());
}

class ImcApp extends StatelessWidget {
  const ImcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Calculadora IMC",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: Image.asset(
                      "assets/images/indice-de-massa-corporal.png",
                      height: 110,
                      width: 200,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: const Text(
                      "Insira seus dados abaixo: ",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      //component
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Peso: ",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      )),

                  const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple,),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: "Seu peso aqui",
                    ),
                  ),

                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Altura: ",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      )),
                  const TextField(
                    decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple,),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      hintText: "Sua altura aqui",
                    ),
                  ),
                  
                  //fim component
                  Container(
                    margin: const EdgeInsets.fromLTRB(12 ,20, 15, 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("Resultado: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ElevatedButton.icon(
                        label: const Text("Conferir", style: TextStyle(fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                        ),
                        icon: const Icon(Icons.check),
                        onPressed: () {
                          print("Oi");
                        },
                      ),
                    ],
                  )),

                ],
              )),
        ),
      ),
    );
  }
}
