
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:parking_spot/app/screens/home_screen.dart';

import '../components/menu_component.dart';
import '../controllers/parking_spot_controller.dart';
import '../models/parking_spot_model.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key, required this.objeto}) : super(key: key);

  final ParkingSpotModel objeto;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {


  var controller = ParkingSpotController.parkingSpotController;

  TextEditingController _parkingSpotNumber = TextEditingController();
  TextEditingController _licensePlateCar = TextEditingController();
  TextEditingController _brandCar = TextEditingController();
  TextEditingController _modelCar = TextEditingController();
  TextEditingController _colorCar = TextEditingController();
  TextEditingController _responsibleName = TextEditingController();
  TextEditingController _apartment = TextEditingController();
  TextEditingController _block = TextEditingController();

  @override
  void initState() {
    super.initState();
    _parkingSpotNumber.text = widget.objeto.parkingSpotNumber;
    _licensePlateCar.text = widget.objeto.licensePlateCar;
    _brandCar.text = widget.objeto.brandCar;
    _modelCar.text = widget.objeto.modelCar;
    _colorCar.text = widget.objeto.colorCar;
    _responsibleName.text = widget.objeto.responsibleName;
    _apartment.text = widget.objeto.apartment;
    _block.text = widget.objeto.block;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Editar vaga', textAlign: TextAlign.center)
      ),
      drawer: Menu(context),
      body: Center (
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número da vaga',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _parkingSpotNumber,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Placa do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _licensePlateCar,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Marca do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _brandCar,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Modelo do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _modelCar,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Cor do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _colorCar,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Proprietário do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _responsibleName,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Apartamento',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _apartment,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Bloco',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  controller: _block,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(MyHomePage(title: 'Lista de Vagas'));
                      },
                      child: Text('Voltar'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () async {

                      ParkingSpotModel parkingSpot = ParkingSpotModel(
                          widget.objeto.id,
                          _parkingSpotNumber.text,
                          _licensePlateCar.text,
                          _brandCar.text,
                          _modelCar.text,
                          _colorCar.text,
                          "",
                          _responsibleName.text,
                          _apartment.text,
                          _block.text
                      );

                      var response =  await controller.editParkingSpot(parkingSpot);

                      if(response != false){

                        Get.snackbar(
                          "Sucesso",
                          "Salvo com Sucesso",
                          icon: Icon(Icons.check, color: Colors.white),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.lightGreen,
                          colorText: Colors.white,

                        );

                      }else{
                        Get.snackbar(
                            "Houve um erro",
                            "Deu ruim",
                            icon: Icon(Icons.error, color: Colors.white),
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.blue,
                            //   borderColor: Colors.blue
                            colorText: Colors.white
                        );
                      }



                    }, child: Text("Salvar")),
                  ],
              )
            ]
        ),
      ),
    );
  }
}

