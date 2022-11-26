
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:parking_spot/app/screens/home_screen.dart';

import '../components/menu_component.dart';
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
              Text(
                'Número da Vaga',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _parkingSpotNumber,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Placa do carro',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _licensePlateCar,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Marca do carro',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _brandCar,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Modelo do carro',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _modelCar,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Cor do carro',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _colorCar,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Proprietário do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _responsibleName,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
              Text(
                'Apartamento',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                  enabled: false,
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
                  enabled: false,
                  textAlign: TextAlign.center,
                  controller: _block,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16)
              ),
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

