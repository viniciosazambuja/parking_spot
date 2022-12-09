
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:parking_spot/app/screens/home_screen.dart';

import '../components/menu_component.dart';
import '../components/text_component.dart';
import '../components/text_field_component.dart';
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
              TextComponent(text: 'Número da vaga'),
              TextFieldComponent(controller: _parkingSpotNumber, enabled: true),
              TextComponent(text: 'Placa do carro'),
              TextFieldComponent(controller: _licensePlateCar, enabled: true),
              TextComponent(text: 'Marca do carro'),
              TextFieldComponent(controller: _brandCar, enabled: true),
              TextComponent(text: 'Modelo do carro'),
              TextFieldComponent(controller: _modelCar, enabled: true),
              TextComponent(text: 'Cor do carro'),
              TextFieldComponent(controller: _colorCar, enabled: true),
              TextComponent(text: 'Nome do responsável'),
              TextFieldComponent(controller: _responsibleName, enabled: true),
              TextComponent(text: 'Apartamento'),
              TextFieldComponent(controller: _apartment, enabled: true),
              TextComponent(text: 'Bloco'),
              TextFieldComponent(controller: _block, enabled: true),
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

