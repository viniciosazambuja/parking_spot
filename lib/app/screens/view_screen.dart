
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

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key, required this.objeto}) : super(key: key);

  final ParkingSpotModel objeto;

  @override
  State<ViewPage> createState() => _EditPageState();
}

class _EditPageState extends State<ViewPage> {


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
          title: Text('Ver detalhes', textAlign: TextAlign.center)
      ),
      drawer: Menu(context),
      body: Center (
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextComponent(text: 'Número da vaga'),
              TextFieldComponent(controller: _parkingSpotNumber, enabled: false),
              TextComponent(text: 'Placa do carro'),
              TextFieldComponent(controller: _licensePlateCar, enabled: false),
              TextComponent(text: 'Marca do carro'),
              TextFieldComponent(controller: _brandCar, enabled: false),
              TextComponent(text: 'Modelo do carro'),
              TextFieldComponent(controller: _modelCar, enabled: false),
              TextComponent(text: 'Cor do carro'),
              TextFieldComponent(controller: _colorCar, enabled: false),
              TextComponent(text: 'Nome do responsável'),
              TextFieldComponent(controller: _responsibleName, enabled: false),
              TextComponent(text: 'Apartamento'),
              TextFieldComponent(controller: _apartment, enabled: false),
              TextComponent(text: 'Bloco'),
              TextFieldComponent(controller: _block, enabled: false),
              ElevatedButton(
                  onPressed: () {
                    Get.to(MyHomePage(title: 'Lista de Vagas'));
                  },
                  child: Text('Voltar')
              )
            ]
        ),
      ),
    );
  }
}

