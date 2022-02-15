import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  TextEditingController weightConttoller = TextEditingController();
  TextEditingController heightConttoller = TextEditingController();

  Widget handleTextField(
      String hintTextField, TextEditingController controlInput) {
    return TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.purple,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          hintText: hintTextField,
        ),
        controller: controlInput);
  }

  Widget handleLabelText(String labelText) {
    return Container(
        //component
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            labelText,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ));
  }

  var result = "";
  void _handleOnCalculate() {
    double doubleWeightController = double.parse(weightConttoller.text);
    double doubleHeightController = double.parse(heightConttoller.text) / 100;

    double imc = doubleWeightController /
        (doubleHeightController * doubleHeightController);

    if (imc < 17) {
      result = "Muito abaixo do peso: ${imc.toStringAsFixed(2)} de imc";
    } else if (imc > 17 && imc < 18.49) {
      result = "Abaixo do peso: ${imc.toStringAsFixed(2)} de imc";
    } else if (imc >= 18.5 && imc <= 24.99) {
      result = "Peso normal: ${imc.toStringAsFixed(2)} de imc";
    } else if (imc >= 25 && imc <= 29.99) {
      result = "Acima do peso: ${imc.toStringAsFixed(2)} de imc";
    } else if (imc >= 30 && imc <= 34.99) {
      result = "Obesidade I: ${imc.toStringAsFixed(2)} de imc";
    } else if (imc >= 35 && imc <= 39.99) {
      result = "Obesidade II: ${imc.toStringAsFixed(2)} de imc";
    }

    setState(() {
      result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              handleLabelText("Peso: "),
              handleTextField("Seu peso Aqui", weightConttoller),
              handleLabelText("Altura: "),
              handleTextField("Sua altura aqui", heightConttoller),

              //fim component
              Container(
                  margin: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Resultado: ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      ElevatedButton.icon(
                        label: const Text("Conferir",
                            style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                      ),
                     icon: const Icon(Icons.check),
                     onPressed: () {
                        _handleOnCalculate();
                    },
                  ),
                 ],
              )),
    
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(result),
              )
            ],
          )),
        
    );
  }
}
